<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function index()
    {
        echo "Hi there!";
        //$this->load->view('welcome_message');
    }
    public function test()
    {
        echo "Test successful";
    }
}
