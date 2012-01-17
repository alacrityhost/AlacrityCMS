<?php
class Admin extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('news_model');
 
		$this->load->helper('url');
		$this->load->helper('ckeditor');
 
 
		//Ckeditor's configuration
		$this->data['ckeditor'] = array(
 
			//ID of the textarea that will be replaced
			'id' 	=> 	'textContent',
			'path'	=>	'/public/js/ckeditor',
			'extraPlugins' => 'stylesheetparser',
			'contentsCss' => array(
				'/public/css/blueprint/screen.css',
				'/public/css/style.css'
			),
			'stylesSet' => array(),
			//Optionnal values
			'config' => array(
				'toolbar' 	=> 	"Full", 	//Using the Full toolbar
				'width' 	=> 	"710px",	//Setting a custom width
				'height' 	=> 	'350px',	//Setting a custom height
 
			)
		);
	}
	
	public function index(){
		// This will be password protected once User Access Control has been implemented
		
	}
	
	public function news(){
		// This function will handle the management of news articles
	}
	
	public function users(){
		// This function will handle user permissions and access control
	}
	
}