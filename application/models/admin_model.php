<?php class Admin_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();

    }

    public function get_admin_user($username, $password)
    {
        $query = $this->db->query("SELECT * FROM admin_users WHERE 1");
        print_r($query);
        
    }
}