<?php


spl_autoload_register(
    function($classe) { // http://www.php.net/manual/it/functions.anonymous.php
        // la cartella base delle app
        $base = dirname(__FILE__) . DIRECTORY_SEPARATOR ;

        // sostituisco "_" con DIRECTORY_SEPARATOR in modo da caricare classi dentro le cartelle
        $classe = str_replace('_', DIRECTORY_SEPARATOR, $classe);
        // percorso completo del file da includere
        $file = $base . $classe . '.php';

        // controllo se esiste ed è leggibile
        if ( file_exists($file) && is_readable($file)) {

            require_once $file;
            return true;
        }
        return false;
    });