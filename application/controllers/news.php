<?php
class News extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('news_model');
 
		$this->load->helper('url'); //You should autoload this one ;)
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

	public function index($offset = 0){
		if(!isset($offset)){
			$offset = 0;
		}
		$this->load->library('pagination');
		
		$data['news'] = $this->news_model->get_news($offset);
		$data['title'] = TITLE . BLOG . "Home";
		
		// configure pagination
		$config['base_url'] = "/news/index/"; // page is the base of the index url
		$config['total_rows'] = $this->news_model->get_rows();
		$config['per_page'] = 10; // we want to display 10 articles per page
		$this->pagination->initialize($config);
		$data['pagination'] = $this->pagination->create_links();
		//present the page
		$this->load->view('templates/header',$data);
		$this->load->view('news/index',$data);
		$this->load->view('templates/footer',$data);
	}

	public function view($slug){
		$data['article'] = $this->news_model->get_news_all($slug);
		if (empty($data['article'])){
			show_404();
		}
		$data['title'] = TITLE . BLOG . $data['article']['title'];
		$this->load->view('templates/header', $data);
		$this->load->view('news/view', $data);
		$this->load->view('templates/footer');
		//present the page
		
	}
	
	public function create(){
		$this->load->helper('form');
		$this->load->library('form_validation');
		
		$data['title'] = TITLE . BLOG . "New Article";
		
		$this->form_validation->set_rules('title','Title','required');
		$this->form_validation->set_rules('text','text','required');
		
		if($this->form_validation->run() === FALSE){
			$this->load->view('templates/header');
			$this->load->view('news/create', $this->data);
			$this->load->view('templates/footer');
		}else{
			$this->news_model->set_news();
			$this->load->view('news/success');
		}
	}
}