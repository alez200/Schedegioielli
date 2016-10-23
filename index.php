<?php
/**
 * Created by PhpStorm.
 * User: Bakeca
 * Date: 17/10/2016
 * Time: 16:41
 */


    // carico l'Autoload delle classi

    require_once( 'Application' . DIRECTORY_SEPARATOR . 'Autoloader.php' );
    require_once( 'config.php' );

    Controller_Router::run();


?>



