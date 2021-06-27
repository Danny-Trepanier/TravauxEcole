<?php
/*
 Plugin Name: Pastel Bg Color
 Description: Changement de la couleur de fond de l'élément body selon une liste de choix.
 Version: 1
 Author: Danny Trépanier
 */

function pbc_definir_table_sql() { 
    if ( !defined('PBC_TABLE_NAME') ) {
        global $wpdb;
        define ( 'PBC_TABLE_NAME', $wpdb->prefix.'pastel_bg_color' );
    }
};
add_action('plugins_loaded', 'pbc_definir_table_sql', 0);


function pbc_ajout_feuille_de_style() {
    wp_enqueue_style('pbc_style', plugins_url('styles/styles.css',__FILE__));
}
add_action('wp_head', 'pbc_ajout_feuille_de_style');


add_filter( 'body_class', function( $classes ) {
    global $wpdb;
    $results = $wpdb->get_var("SELECT color FROM " . PBC_TABLE_NAME);
    return array_merge( $classes, array( $results ) );
} );


register_activation_hook(__FILE__, 'pbc_activation_du_plugin'); 



function pbc_activation_du_plugin() {
    global $wpdb;
    $table_name = $wpdb->prefix.'pastel_bg_color';

    if ($wpdb->get_var("SHOW TABLES LIKE '$table_name'") != $table_name) {
        $sql = "CREATE TABLE $table_name(
            id int NOT NULL AUTO_INCREMENT,
            color varchar(50) NOT NULL,
            PRIMARY KEY (id)
           )";

        require_once(ABSPATH.'wp-admin/includes/upgrade.php');
        dbDelta($sql);

        global $wpdb;

        $pbc_color = 'azure'; 
        $wpdb->insert( $table_name,
                        array(
                            'color'=> $pbc_color
                        ), 
                        array(
                            '%s'
                        )
        );
    }
}


function pbc_ajouter_menu() { 
    add_menu_page(
        'Pastel Bg Color', 
        'Pastel Bg Color', 
        'manage_options', 
        'pbc_custom_plugin_page', 
        'pbc_ajouter_formulaire'
    ); 
}
add_action('admin_menu', 'pbc_ajouter_menu');


function pbc_ajouter_formulaire() {

    echo '<div style="padding:5vw;">
            <h2>Changer la couleur de fond</h2>
            <form method="post" >

                <select name="pastelBgColor">
                    <option value="azure">Azure</option>
                    <option value="champagne">Champagne</option>
                    <option value="cotton-candy">Cotton Candy</option>
                    <option value="tea-green">Tea Green</option>
                </select>

                <button type="submit">Changer</button>
            </form>
        </div>';

    if (isset($_POST['pastelBgColor'])) {
        pbc_update_data();
    };

    pbc_show_data();
}


function pbc_update_data() { 
    global $wpdb;
    $table_name = $wpdb->prefix.'pastel_bg_color';
    $pbc_color = sanitize_text_field($_POST['pastelBgColor']); 

    $data = [ 'color' => $pbc_color ];
    $where = [ 'id' => 1 ];
    $wpdb->UPDATE ( $table_name, $data, $where );
}


function pbc_show_data() { 
    global $wpdb;

    $results = $wpdb->get_var("SELECT color FROM " . PBC_TABLE_NAME);

    if ($results) {
        echo '<div style="padding:10vh;">';
            echo 'Couleur de fond actuelle : ' .$results;
        echo '</div>';
    } 
}

?>