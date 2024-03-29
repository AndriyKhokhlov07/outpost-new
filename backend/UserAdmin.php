<?PHP
require_once('api/Backend.php');

class UserAdmin extends Backend
{	
	public function fetch()
	{
		$user = new stdClass;
		if(!empty($_POST['user_info']))
		{
			$user->id = $this->request->post('id', 'integer');
			$user->type = $this->request->post('type', 'integer');
			$user->enabled = $this->request->post('enabled', 'integer');
			$user->name = $this->request->post('name');
			$user->email = $this->request->post('email');
			$user->group_id = $this->request->post('group_id', 'integer');
			$user->house_id = $this->request->post('house_id', 'integer');

			if($this->request->post('password'))
				$user->password = $this->request->post('password');

			// $count_users = $this->users->count_users();
	
			## Не допустить одинаковые email пользователей.
			if(empty($user->name))
			{			
				$this->design->assign('message_error', 'empty_name');
			}
			elseif(empty($user->email))
			{			
				$this->design->assign('message_error', 'empty_email');
			}
			elseif(($u = $this->users->get_user($user->email)) && $u->id != $user->id)
			{			
				$this->design->assign('message_error', 'login_existed');
			}
			else
			{
				// Add user
				if(empty($user->id))
				{
					// Отправляем email пользователю с логином и паролем 
					$this->design->assign('email', $user->email);
					$this->design->assign('pass', $user->password);
					// Отправляем письмо
					$email_template = $this->design->fetch($this->config->root_dir.'design/'.$this->settings->theme.'/html/email_user_pass.tpl');
					$subject = $this->design->get_var('subject');

					//$this->notify->email($user->email, $subject, $email_template, $this->settings->notify_from_email);

					$user->id = $this->users->add_user($user);
					$this->design->assign('message_success', 'added');
	   	    		$user = $this->users->get_user(intval($user->id));
				}
				// Update user
				else
				{
					$user->id = $this->users->update_user($user->id, $user);
	  				$this->design->assign('message_success', 'updated');
	   	    		$user = $this->users->get_user(intval($user->id));
				}
				
			}
		}
		elseif($this->request->post('check'))
		{ 
			// Действия с выбранными
			$ids = $this->request->post('check');
			if(is_array($ids))
			switch($this->request->post('action'))
			{
				case 'delete':
				{
					foreach($ids as $id)
					{
						$o = $this->orders->get_order(intval($id));
						if($o->status<3)
						{
							$this->orders->update_order($id, array('status'=>3, 'user_id'=>null));
							$this->orders->open($id);							
						}
						else
							$this->orders->delete_order($id);
					}
					break;
				}
			}
 		}

		$id = $this->request->get('id', 'integer');
		if(!empty($id))
			$user = $this->users->get_user(intval($id));			

		if(!empty($user))
		{
			$this->design->assign('user', $user);
			
			//$orders = $this->orders->get_orders(array('user_id'=>$user->id));
			//$this->design->assign('orders', $orders);
		}


		$houses = $this->pages->get_pages(array('menu_id'=>5, 'not_tree'=>1));
		if(!empty($houses))
			$houses= $this->categories_tree->get_categories_tree('houses', $houses);
		$this->design->assign('houses', $houses);
		
 	  	$groups = $this->users->get_groups();
		$this->design->assign('groups', $groups);
		
 	  	return $this->design->fetch('user.tpl');
	}
	
}

