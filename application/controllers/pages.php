<?php

class Pages extends CI_Controller {

	public function view($page = 'home')
	{
		if( ! file_exists('application/views/pages/'.$page.'.php')){
			// No such page exists, redirect to 404
			show_404();
		}else{
			$data['title'] = ucfirst($page);
			
			$this->load->view('templates/header',$data);
			$this->load->view('pages/'.$page,$data);
			$this->load->view('templates/footer',$data);
		}
	}
}