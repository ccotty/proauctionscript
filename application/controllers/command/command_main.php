<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Command_main extends CI_Controller {

    public function index()
    {
        $this->load->model('command_model');
        $user = $this->command_model->get_command_user(1, 2);
        //$this->load->view('welcome_message');
    }
}
