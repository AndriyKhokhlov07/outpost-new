<?PHP
require_once('api/Backend.php');

class ExportAdmin extends Backend
{	
	private $export_files_dir = 'backend/files/export/';

	public function fetch()
	{
		$this->design->assign('export_files_dir', $this->export_files_dir);
		if(!is_writable($this->export_files_dir))
			$this->design->assign('message_error', 'no_permission');
  	  	return $this->design->fetch('export.tpl');
	}
	
}

