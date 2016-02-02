<?php
defined('BASEPATH') OR exit('No direct script access allowed');

function initPage($page)
{
           
    $ci =& get_instance();
    $data = array();
    $scriptsArray = array();
    $cssArray = array();

    // Get the themes
    $settings = $ci->auction_model->get_auction_settings();        
    if($ci->agent->mobile())
    {
        $themeInfo = $ci->auction_model->get_theme_settings($settings->mobile_theme);
        $data['theme'] = $settings->mobile_theme;

    }
    else
    {
        $themeInfo = $ci->auction_model->get_theme_settings($settings->theme);
        $data['theme'] = $settings->theme;
    }

    // Get basic info needed for every page         
    $pageInfo = $ci->auction_model->get_page_info($page);
    $data['page'] = $page;
    $data['page_title'] = $pageInfo->page_title;
    $data['page_description'] = $pageInfo->page_description;        

    // Get all the proper CSS and Script references
    if(!empty($themeInfo->scripts))
    {
        $tempScriptsArray = explode("|", $themeInfo->scripts);        
        foreach($tempScriptsArray AS $script)
        {
            if(stripos($script, "//") === FALSE)
            {
                $script = $ci->config->item("base_url")."public/".$data['theme']."/scripts/".$script;
            }
            $scriptsArray[] = $script;
        }        

    }        
    if(!empty($themeInfo->css))
    {
        $tempCssArray = explode("|", $themeInfo->css);
        foreach($tempCssArray AS $css)
        {
            if(stripos($css, "//") === FALSE)
            {
                $css = $ci->config->item("base_url")."public/".$data['theme']."/css/".$css;
            }
            $cssArray[] = $css;
        }
    }                
    if(!empty($pageInfo->page_scripts))
    {
        $tempScriptsArray = explode("|", $pageInfo->page_scripts);        
        foreach($tempScriptsArray AS $script)
        {
            if(stripos($script, "//") === FALSE)
            {
                $script = $ci->config->item("base_url")."public/".$data['theme']."/scripts/".$script;
            }
            $scriptsArray[] = $script;
        }
    }
    if(!empty($pageInfo->page_css))
    {
        $tempCssArray = explode("|", $pageInfo->page_css);
        foreach($tempCssArray AS $css)
        {
            if(stripos($css, "//") === FALSE)
            {
                $css = $ci->config->item("base_url")."public/".$data['theme']."/css/".$css;
            }
            $cssArray[] = $css;
        }
    }        

    $data['scripts'] = $scriptsArray;
    $data['css'] = $cssArray;


    return $data;
}

