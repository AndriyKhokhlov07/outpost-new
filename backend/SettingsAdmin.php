<?PHP
require_once('api/Backend.php');

class SettingsAdmin extends Backend
{	
	private $allowed_image_extentions = array('png', 'gif', 'jpg', 'jpeg', 'ico');
	
	public function fetch()
	{	
		$this->passwd_file = $this->config->root_dir.'/backend/.passwd';
		$this->htaccess_file = $this->config->root_dir.'/backend/.htaccess';
		

		$managers = $this->managers->get_managers();
		$this->design->assign('managers', $managers);
 
 		if($this->request->method('POST'))
		{
			$this->settings->site_name = $this->request->post('site_name');
			$this->settings->company_name = $this->request->post('company_name');
			$this->settings->date_format = $this->request->post('date_format');
			$this->settings->admin_email = $this->request->post('admin_email');
			
			$this->settings->order_email = $this->request->post('order_email');
			$this->settings->checklists_email = $this->request->post('checklists_email');
			$this->settings->restocking_email = $this->request->post('restocking_email');
			$this->settings->krestocking_email = $this->request->post('krestocking_email');
			$this->settings->comment_email = $this->request->post('comment_email');
			$this->settings->callme_email = $this->request->post('callme_email');
			$this->settings->notify_from_email = $this->request->post('notify_from_email');
			$this->settings->subscription_email = $this->request->post('subscription_email');
			
			$this->settings->decimals_point = $this->request->post('decimals_point');
			$this->settings->thousands_separator = $this->request->post('thousands_separator');
			
			$this->settings->products_num = $this->request->post('products_num');
			$this->settings->products_num_admin = $this->request->post('products_num_admin');
			$this->settings->max_order_amount = $this->request->post('max_order_amount');	
			$this->settings->units = $this->request->post('units');	
			
			$this->settings->galleries_num = $this->request->post('galleries_num');
			$this->settings->galleries_num_admin = $this->request->post('galleries_num_admin');
			$this->settings->images_gallery_num = $this->request->post('images_gallery_num');
			$this->settings->images_gallery_num_admin = $this->request->post('images_gallery_num_admin');
			
			// Простые звонки
			$this->settings->pz_server = $this->request->post('pz_server');
			$this->settings->pz_password = $this->request->post('pz_password');
			$this->settings->pz_phones = $this->request->post('pz_phones');
			
			
			// Водяной знак
			$clear_image_cache = false;
			$watermark = $this->request->files('watermark_file', 'tmp_name');
			if(!empty($watermark) && in_array(pathinfo($this->request->files('watermark_file', 'name'), PATHINFO_EXTENSION), $this->allowed_image_extentions))
			{
				if(@move_uploaded_file($watermark, $this->config->root_dir.$this->config->watermark_file))
					$clear_image_cache = true;
				else
					$this->design->assign('message_error', 'watermark_is_not_writable');
			}
			
			if($this->settings->watermark_offset_x != $this->request->post('watermark_offset_x'))
			{
				$this->settings->watermark_offset_x = $this->request->post('watermark_offset_x');
				$clear_image_cache = true;
			}
			if($this->settings->watermark_offset_y != $this->request->post('watermark_offset_y'))
			{
				$this->settings->watermark_offset_y = $this->request->post('watermark_offset_y');
				$clear_image_cache = true;
			}
			if($this->settings->watermark_transparency != $this->request->post('watermark_transparency'))
			{
				$this->settings->watermark_transparency = $this->request->post('watermark_transparency');
				$clear_image_cache = true;
			}
			if($this->settings->images_sharpen != $this->request->post('images_sharpen'))
			{
				$this->settings->images_sharpen = $this->request->post('images_sharpen');
				$clear_image_cache = true;
			}
			
			
			// Удаление заресайзеных изображений
			if($clear_image_cache)
			{
				$dir = $this->config->resized_images_dir;
				if($handle = opendir($dir))
				{
					while(false !== ($file = readdir($handle)))
					{
						if($file != "." && $file != "..")
						{
							@unlink($dir."/".$file);
						}
					}
					closedir($handle);
				}			
			}			
			$this->design->assign('message_success', 'saved');
		}
 	  	return $this->design->fetch('settings.tpl');
	}
	
}

