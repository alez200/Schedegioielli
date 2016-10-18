<?php

/**
 * Created by PhpStorm.
 * User: Bakeca
 * Date: 18/10/2016
 * Time: 17:01
 */
class Models_DbConnect extends Singleton  {

    /**
     * @todo singleton pattern
     * @access public
     * @var object
     */
    public static $singleton ;

    private $cmd;
    private $connessione;
    private $result;
    private static $instance =array();

    protected function costruttore(){

        // Parametri di connessione
        $host = 'localhost';
        $user = 'alez200c81652';
        $password = 'alez200c81652';
        $database = 'alez200c81652';
        $charset = 'utf8';

        // connessione in construct per non chiamare il metodo
        $this->connect($host, $user, $password, $database, $charset);
    } // fine costruttore()

    public function __destruct(){

        $this->disconnect();
        return true;

    }

    public function connect($host,$user,$password,$database, $charset)    {

        try {

            //tentativo di connessione
            $col = "mysql:host=$host;dbname=$database;charset=$charset";

            $this->connessione = new PDO($col, $user, $password, array(
                PDO::ATTR_PERSISTENT => TRUE,
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
            ));

        } catch (PDOException $e) {

            echo '<p class="error">' . $e->getMessage() . '</p>';
            die();

        }

        return true;

    }

    //Disconnessione

    public function disconnect( )    {

        $this->connessione = null;
        return true;

    }


    /**
     * Execute the query without prepared statement
     *
     * @param string $cmd Command
     * @param int $dieOrNot If you want that the script stop in case of error
     * @return array
     */
    public function execQuery($cmd, $dieOrNot = FALSE) {
        try {

            $this->result =  $this->connessione->query($cmd);
            return $this->result;

        } catch (PDOException $e) {

            echo '<p class="error">' . $e->getMessage() . '</p>';

            if ($dieOrNot) {

                die();

            }

        }
    }


    /**
     * Execute the query with prepared statement
     *
     * @param string $cmd Command
     * @param int $dieOrNot If you want that the script stop in case of error
     * @return array
     */
    public function execQueryPrepare($cmd, $arrayCampi, $dieOrNot = FALSE) {
        try {

            $this->result = $this->connessione->prepare($cmd);
            $this->result->execute($arrayCampi);
            return $this->result;

        } catch (PDOException $e) {
            echo '<p class="error">' . $e->getMessage() . '</p>';
            if ($dieOrNot) {
                die();
            }
        }
    }

    /**
     * Execute the insert, update or delete with prepared statement
     *
     * @param string $cmd Command
     * @param array $arrayCampi Array of value
     * @param int $dieOrNot If you want that the script stop in case of error
     * @return void
     */
    public function execPrepare($cmd, $arrayCampi, $dieOrNot = FALSE) {
        try {
            $this->result = $this->connessione->prepare($cmd);
            $this->result->execute($arrayCampi);
        } catch (PDOException $e) {
            return '<p class="error">' . $e->getMessage() . '</p>';
            if ($dieOrNot) {
                die();
            }
        }
    }

    /**
     * Execute the insert, update or delete with prepared statement
     *
     * @param string $cmd Command
     * @param array $arrayCampi Array of value
     * @param int $dieOrNot If you want that the script stop in case of error
     * @return int Last id inserted
     */
    public function execPrepareLastId($cmd, $arrayCampi, $dieOrNot = FALSE) {
        try {
            $this->result = $this->connessione->prepare($cmd);
            $this->result->execute($arrayCampi);
            return $this->connessione->lastInsertId();
        } catch (PDOException $e) {
            return '<p class="error">' . $e->getMessage() . '</p>';
            if ($dieOrNot) {
                die();
            }
        }
    }

    /**
     * Execute the query with prepared statement, just for login
     *
     * @param string $cmd Command
     * @param array $arrayCampi Array of value
     * @return array or FALSE in case of wrong login
     */
    public function execQueryLogin($cmd, $arrayCampi) {
        try {
            $cmd = $this->connessione->prepare($cmd);
            $cmd->execute($arrayCampi);
            if ($cmd->rowCount() == 1) {
                return $cmd->fetchAll();
            } else {
                return FALSE;
            }
        } catch (PDOException $e) {
            return '<p class="error">' . $e->getMessage() . '</p>';
            die();
        }
    }

    // Per fettchare , estrare i dati in un Array o Oggetto
    public function fetch(){

        $rows = [];

        while($row = $this->result->fetch(PDO::FETCH_ASSOC)) {
            $rows[]=$row;
        }

        $this->result=null;

        return $rows;

    }

    public function beginTransaction(){

        $this->connessione->beginTransaction();

    }

    public function commit(){

        $this->connessione->commit();

    }

    public function rollBack(){

        $this->connessione->rollBack();


    }

}
