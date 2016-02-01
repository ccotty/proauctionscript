<?php class Command_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();

    }

    public function get_command_user($username, $password)
    {
        $query = $this->db->query("SELECT * FROM command_users WHERE 1");
        print_r($query);
        
    }
}