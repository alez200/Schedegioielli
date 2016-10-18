<?php

/**
 * Created by PhpStorm.
 * User: Bakeca
 * Date: 03/08/2016
 * Time: 09:12
 */
class Models_Model
{


    protected function getDb()
    {
        return Models_DbConnect::run();
    }

    public function getAll(){

        $cmd='select * from '.$this->table;
        $arrayCampi=[];

        $result = $this->getResult($cmd, $arrayCampi);

        return $result;

    }

    public function getResult($cmd, $arrayCampi){

        $this->getDb()->execQueryPrepare($cmd,$arrayCampi);

        $rows = $this->getDb()->fetch();

        return $rows;

    }

    public function insert($cmd, $arrayCampi) {

        try {

            $insert = $this->getDb()->execQueryPrepare($cmd,$arrayCampi);
            $this->getDb()->commit();

            return $insert;

        } catch(Exception $e) {

            // Riabilito l'auto-commit
            $this->getDb()->rollBack();
            die("Errore imprevisto " . $e->getMessage());

        }


    }




}