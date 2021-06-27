<?php

// Si uninstall.php n’est pas appelé par WordPress, die
if (!defined('WP_UNINSTALL_PLUGIN')) { 
    die;
}

global $wpdb;
$table_name = $wpdb->prefix.'pastel_bg_color';
$sql = $wpdb->query("DROP TABLE IF EXISTS $table_name");


?>