<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 23/10/2016
 * Time: 10:01
 */
class Controller_Router extends Singleton {


    public static $singleton ;

    private static $instance =array();

    protected function costruttore(){

        $this->set();

    } // fine costruttore()

    private function set(){

    //ripulisco la url dall'eventuale ROOT_NAME
        $uri_op= str_replace(ROOT_NAME,'',URI);

        if ( substr($uri_op, -1)=='/'){

            $uri_op=substr($uri_op, 0, strlen($uri_op)-1);

        };

    //Splitto la url per trovare nomi dei controller, delle action e dei parametri
        $explode_uri_op = explode("/", $uri_op);

    //creo la variabile con il nome del controller da chiamare

        $controller = $explode_uri_op[0];


    // controllo se la url è della home e gli assegno il controller
        if (count($explode_uri_op) < 2) {

            if ($explode_uri_op[0] == '') {

                $controller = 'home';
            }
        }

        $controller = 'Controller_'.ucfirst($controller);

        if (class_exists($controller)) {

            $controller = new $controller;


        } else {

            $controller = new  Controller_Error;

        }


    }

}