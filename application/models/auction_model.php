<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Auction_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
    }

    public function get_auction_settings()
    {
        return $this->db->query("SELECT * FROM auction_settings WHERE 1")->row();
    }
    public function get_theme_settings($theme)
    {
        return $this->db->query("SELECT * FROM auction_themes WHERE theme = '".$theme."' LIMIT 1")->row();
    }
    
    public function get_page_info($pageName)
    {
        return $this->db->query("SELECT * FROM auction_pages WHERE page_name = '".$pageName."' LIMIT 1")->row();
    }
}