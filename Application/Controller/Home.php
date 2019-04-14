<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 23/10/2016
 * Time: 10:44
 */
class Controller_Home
{

    private $controller= 'Home';

    public function __construct() {


        $this->render();

    }

    public function render() {


        $prodotti= new Models_Product();
        $linee= new Models_Linea();
        //$lista_linea = $linee->getAll();
        $lista_linea = $linee->getLineabyId(5);

        $layout = '/Layout/layout.phtml';
        $title_page = 'Lista prodotti';
        $vista ='Application/View/Home.phtml';
        require_once ($vista);

    }

}