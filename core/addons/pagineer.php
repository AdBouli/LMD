<?php

trait pagineer {

	var $curr_page;
	var $nb_page;
	var $url;
	var $size;

	//LANCEUR/MAIN
	function generate_pagin($datas, $size, $page, $url){
		//$data: tableau des resultats à afficher
		//$size: nombre de ligne à afficher par page
		//$page: n° de la page à afficher
		//$url: racine des différentes url des boutons 
		$nb_rows = count($datas);
		for($i=($page-1)*$size; $i<$page*$size; $i++){
			if($i<$nb_rows){
				$res['result'][] = $datas[$i];
			}
		}
		$this->size = $size;
		$this->url = $url;
		$this->curr_page = $page;
		$this->nb_page = ceil($nb_rows/$size);
		$res['pagination'] = $this->edit_pagin();
		return $res;
	}

	//EDITEUR DE LA PAGINATION
	function edit_pagin(){
		$pagination = '<div class="pagination"><ul>';
		$pagination .= $this->button_previous();
		$pagination .= $this->button_nav();
		$pagination .= $this->button_next();
		$pagination .= '</ul></div>';
		return $pagination;
	}

	//BOUTON PRECEDENT
	function button_previous(){
		if($this->curr_page == 1){
			$previous = '<li class="">Précédent</li>';
		}else {
			$p = $this->curr_page-1;
			$url = WEBROOT.str_replace('NUMPAGE', $this->size.'-'.$p, $this->url);
			$previous = '<li class=""><a href="'.$url.'">Précédent</a></li>';
		}
		return $previous;
	}

	//BOUTONS 1 / 2 / 3 / n ...
	function button_nav(){
		$nav = '';
		for($i=1; $i<=$this->nb_page; $i++){
			//si c'est la page courrante
			if($i == $this->curr_page){
				$nav .= '<li class="">'.$i.'</li>';
			}else {
				//si 2 premières/dernières page, ou si précédante/suivante page courrante
				if($i<=2||$i>=$this->nb_page-1||($i>=$this->curr_page-1&&$i<=$this->curr_page+1)){
					$url = WEBROOT.str_replace('NUMPAGE', $this->size.'-'.$i, $this->url);
					$nav .= '<li><a href="'.$url.'">'.$i.'</a></li>';
				}
			}
			//si page courrante sup. à 4 et curseur à 2 OU page courrante inf. à 4e de la fin et curseur suivant la page courrante
			if(($this->curr_page>4&&$i==2)||($this->curr_page<$this->nb_page-3&&$i==$this->curr_page+1)){
				$nav .= '<li class="">...</li>';
			}
		}
		return $nav;
	}

	//BOUTON SUIVANT
	function button_next(){
		if($this->curr_page == $this->nb_page){
			$next = '<li class="pagination-next disabled">Suivant</a></li>';
		}else {
			$p = $this->curr_page+1;
			$url = WEBROOT.str_replace('NUMPAGE', $this->size.'-'.$p, $this->url);
			$next = '<li class="pagination-next"><a href="'.$url.'" aria-label="Next page">Suivant</a></li>';
		}
		return $next;
	}


}



?>