<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 23/10/2016
 * Time: 10:44
 */
class Controller_Error
{

    private $controller= 'Home';

    public function __construct() {


        $this->render();

    }

    public function render() {


        $prodotti= new Models_Product();
        $linee= new Models_Linea();
        $lista_linea = $linee->getAll();
        $layout = '/Layout/layout.phtml';
        $title_page = 'Errore';
        $vista ='Application/View/Error.phtml';
        require_once ($vista);

    }

}