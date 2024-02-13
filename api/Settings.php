<?php

/**
 * Управление настройками магазина, хранящимися в базе данных
 * В отличие от класса Config оперирует настройками доступными админу и хранящимися в базе данных.
 *
 *
 * @copyright 	2011 Denis Pikusov
 * @link 		http://backendcms.ru
 * @author 		Denis Pikusov
 *
 */

require_once('Backend.php');

class Settings extends Backend
{
	private $vars = [];
	
	function __construct()
	{
		parent::__construct();
		
		// Выбираем из базы настройки
		$this->db->query('SELECT name, value FROM __settings');

		// и записываем их в переменную		
		foreach ($this->db->results() as $result) {
            if (!($this->vars[$result->name] = @unserialize($result->value))) {
                $this->vars[$result->name] = $result->value;
            }
        }
        $tm = $this->request->get('tm');
        if (in_array($tm, [2, 'new'])) {
            $this->vars['theme'] = $this->config->theme_new->name;
        } elseif ($tm === 1) {
            $this->vars['theme'] = $this->config->themes[1]->name;
        }
	}
	
	public function __get($name)
	{
		if($res = parent::__get($name))
			return $res;
		
		if(isset($this->vars[$name]))
			return $this->vars[$name];
		else
			return null;
	}
	
	public function __set($name, $value)
	{
		$this->vars[$name] = $value;

		if(is_array($value))
			$value = serialize($value);
		else
			$value = (string) $value;
			
		$this->db->query('SELECT count(*) as count FROM __settings WHERE name=?', $name);

        if(!in_array($name, ['theme'])) {
            if ($this->db->result('count') > 0)
                $this->db->query('UPDATE __settings SET value=? WHERE name=?', $value, $name);
            else
                $this->db->query('INSERT INTO __settings SET value=?, name=?', $value, $name);
        }
	}
}