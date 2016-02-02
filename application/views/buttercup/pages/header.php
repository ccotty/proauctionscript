<?php


?><!DOCTYPE html>
<html>    
<head>
    <title><?php echo $page_title;?></title>
    <meta name="description" content="<?php echo $page_description;?>" />
    <?php foreach($scripts AS $script) { ?>
    <script type='text/javascript' src='<?php echo $script;?>'></script>
    <?php } ?>
    <?php foreach($css AS $cssLink) { ?>
    <link rel="stylesheet" href="<?php echo $cssLink;?>" type="text/css" media="all" />
    <?php } ?>  
</head>
<body>
    

