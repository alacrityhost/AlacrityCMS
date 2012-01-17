<?php
class News_model extends CI_Model {

	public function __construct()
	{
		$this->load->database();
	}
	
	public function get_news_all($slug = FALSE){
		if($slug === FALSE){
			return $this->db->get('news');			
		}
		return $this->db->get_where('news',array('slug'=>$slug))->row_array();
	}
	
	public function get_news($offset = 0){
		$query = $this->db->query('SELECT * FROM news ORDER BY created DESC LIMIT '.$offset.','.($offset+10));
		return $query;
	}
	
	public function set_news(){
		$this->load->helper('url');
		
		$slug = url_title($this->input->post('title'),'dash',TRUE);
		$data = array(
			'title' => $this->input->post('title'),
			'slug' => $slug,
			'text' => $this->input->post('text')
		);
		
		return $this->db->insert('news',$data);
	}
	
	public function get_rows(){
		return $this->db->count_all('news');
	}

}