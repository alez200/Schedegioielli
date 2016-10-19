<?php

/**
 * Created by PhpStorm.
 * User: Bakeca
 * Date: 18/10/2016
 * Time: 16:55
 */
class Models_Product extends Models_Model
{


    protected $table = 'nor_prodotti';


    private $id_prodotto;
    private $id_linea;
    private $id_collezione;
    private $codice;
    private $titolo;
    private $abstract;
    private $materiale;
    private $coverImg;
    private $techImg;
    private $posizione;
    private $prezzo;
    private $dettaglitech;
    private $idUserIserimento;
    private $idUserModifica;
    private $insertDate;
    private $updateDate;
    private $status;




    public function getProdottoyId($id_prodotto){

        $cmd='SELECT * FROM '.$this->table.' where id= :id LIMIT 1';
        $arrayCampi=array(":id_prodotto" => $id_prodotto);

        $result=$this->getResult($cmd, $arrayCampi);

        return $result;

    }

    public function getAllProdotti(){


        $result=$this->getAll();

        return $result;

    }

    public function createProdotto($post){

        $this->getDb()->beginTransaction();

        $cmd="INSERT INTO ".
            $this->table." (
                `titolo`,
                `codice`,
                `materiale`,
                `coverImg`,
                `techImg`,
                prezzo
            )
              VALUES
              ( :titolo,
                :codice,
                :materiale,
                :coverImg,
                :techImg,
                :prezzo )";

        $arrayCampi=array(
            ":titolo"=>$post['titolo'],
            ":codice"=>$post['codice'],
            ":materiale"=>$post['materiale'],
            ":coverImg"=>$post['coverImg'],
            ":techImg"=>$post['techImg'],
            ":prezzo"=>$post['prezzo']
        );


        $result=$this->insert($cmd, $arrayCampi);

        return $result;

    }

    public function createTableProdotto()
    {
        $this->getDb()->beginTransaction();

        $cmd="CREATE TABLE IF NOT EXISTS ".$this->table."(
          `id_prodotto` int(11) NOT NULL AUTO_INCREMENT,
          `id_linea` int(11) ,
          `id_collezione` int(11) ,
          `codice` varchar(15) NOT NULL,
          `titolo` text NOT NULL,
          `abstract` text NOT NULL,
          `materiale` text ,
          `coverImg` text,
          `techImg` text ,
          `posizione` int(11) DEFAULT 1,
          `prezzo` decimal(10,2),
          `dettaglitech` text,
          `idUserIserimento` int(11),
          `idUserModifica` int(11),
          `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
          `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
          `status` int(11) NOT NULL DEFAULT 1,
          PRIMARY KEY (`id_prodotto`)
        )";

        $result=$this->create($cmd);

        return $result;

    }

    public function getAbstract()
    {
        return $this->abstract;
    }

}