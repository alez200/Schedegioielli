<?php

/**
 * Created by PhpStorm.
 * User: Bakeca
 * Date: 18/10/2016
 * Time: 16:55
 */
class Models_Product extends Models_Model
{


    protected $table = 'promohp';


    private $id;
    private $titolo;
    private $abstract;
    private $testo;
    private $coverImg;
    private $categoria_ed;
    private $posizione;
    private $tipoLayout;
    private $link;
    private $idUserIserimento;
    private $idUserModifica;
    private $status;




    public function getPromozionebyId($id){

        $cmd='SELECT * FROM '.$this->table.' where id= :id LIMIT 1';
        $arrayCampi=array(":id" => $id);

        $result=$this->getResult($cmd, $arrayCampi);

        return $result;

    }

    public function createPromotion($post){

        $this->getDb()->beginTransaction();

        $cmd="INSERT INTO ".
            $this->table."
              (`titolo`,
              `abstract`,
              `testo`,
              `coverImg`,
              `categoria_ed`,
              `posizione`,
              `tipoLayout`,
              `link`,
              `idUserIserimento`,
              `status`)
              VALUES
              (:titolo,
              :abstract,
              :testo,
              :coverImg,
              :categoria_ed,
              :posizione,
              :tipoLayout,
              :link,
              :idUserIserimento,
              :status)";

        $arrayCampi=array(
            ":titolo"=>$post['titolo'],
            ":abstract"=>$post['abstract'],
            ":testo"=>$post['testo'],
            ":coverImg"=>$post['coverImg'],
            ":categoria_ed"=>$post['categoria_ed'],
            ":posizione"=>$post['posizione'],
            ":tipoLayout"=>$post['tipoLayout'],
            ":link"=>$post['link'],
            ":idUserIserimento"=>$post['idUserIserimento'],
            ":status"=>$post['status']
        );

        $result=$this->insert($cmd, $arrayCampi);

        try {

            $insert = $this->getDb()->execQueryPrepare($cmd,$arrayCampi);
            $this->getDb()->commit();

        } catch(Exception $e) {

            // Riabilito l'auto-commit
            $this->getDb()->rollBack();
            die("Errore imprevisto " . $e->getMessage());

        }

        return $result;

    }

}