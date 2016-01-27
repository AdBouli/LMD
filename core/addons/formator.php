<?php 

trait formator {

	function remplace_date($val){
		return $val[8].$val[9].'/'.$val[5].$val[6].'/'.$val[0].$val[1].$val[2].$val[3];
	}

	function remplace_time($val){
		return $val[0].$val[1].'h'.$val[3].$val[4];
	}

	function remplace_datetime($val){
		if($val==0){
			$val = 'jamais';
		}else{
			$val = 'le '.$this->remplace_date($val).' à '.$this->remplace_time(substr($val, -8, 8));
		}
		return $val;
	}

}





?>