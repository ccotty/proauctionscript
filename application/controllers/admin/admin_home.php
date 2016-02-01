<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_home extends CI_Controller {

    public function index()
    {
        $this->load->model('admin_model');
        $user = $this->admin_model->get_admin_user(1, 2);
        //$this->load->view('welcome_message');
    }
}
