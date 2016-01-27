<?php
class Controller {

	var $vars = array();
	var $models = array();
	var $layout = 'default';
	var $post = array();

	function __construct(){
		if(!empty($_POST)){
			$this->post = $_POST;
		}
	}

	function set($data){
		$this->vars = array_merge($this->vars, $data);
	}

	function render($filename){
		$view = VIEW. strtolower(get_class($this)).'/'.$filename.'.tpl';
		if(file_exists($view)){
			extract($this->vars);
			ob_start();
			require_once($view);
			$content_for_layout = ob_get_clean();
			if($this->layout == false){
				echo $content_for_layout;
			}else {
				if(file_exists(VIEW.'layout/'. strtolower($this->layout).'.tpl')){
					require_once(VIEW.'layout/'. strtolower($this->layout).'.tpl');
				}else{
					echo 'Layout "'. $this->layout .'" introuvable.';
				}
			}
		}else{
			echo 'Vue "'. strtolower($filename) .'" introuvable.';
		}
	}
		

	function loadModel($name, $id = null){
		require_once(MODL.strtolower($name).'.mdl');
		$class = $name.'Model';
		$this->$name = new $class($id);
	}


	

}


?>