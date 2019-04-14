<?php

/**
 * Created by PhpStorm.
 * User: casa
 * Date: 22/10/2016
 * Time: 16:35
 */
class Models_Linea extends Models_Model
{

    protected $table = 'nor_linea';

    private $id_linea;
    private $codice_linea;
    private $cod_prodotto_linea;
    private $titolo_linea;
    private $abstract_linea;
    private $longtext_linea;
    private $cover_linea;
    private $posizione_linea;
    private $status_linea;
    private $insertDate;
    private $updateDate;
    private $collezione_linea;

    public function getLineabyId($id_linea){

        echo $id_linea;

        $cmd='SELECT * FROM '.$this->table.' where id_linea = :id_linea LIMIT 1';
        $arrayCampi=array(":id_linea" => $id_linea);

        $result=$this->getResult($cmd, $arrayCampi);

        return $result;

    }

    public function getAllLinea(){


        $result=$this->getAll();

        return $result;

    }



}