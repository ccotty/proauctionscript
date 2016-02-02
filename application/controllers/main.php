<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {   
    function __construct()
    {
        parent::__construct();    
        $this->load->model('frontend_model'); 
        $this->load->helper("frontend_functions");
    }
    public function index()
    {
        $page = "home";
        $data = initPage($page);
        
        
        $this->load->view($data['theme'].'/templates/main', $data);
    }
    public function search()
    {
        echo "Search successful";
    }
    
}
