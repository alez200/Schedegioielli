<?php
/**
 * Created by PhpStorm.
 * User: casa
 * Date: 23/10/2016
 * Time: 09:05
 */



/*DB*/

define('HOST', 'localhost');
define('USER','alez200c81652');
define('PASSWORD', 'alez200c81652');
define('DATABASE', 'alez200c81652');
define('CHARSET','utf8');

//URI
//ottengo la url

define('PROJECT','Schedegioielli');
define('URI',parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));


define('BASEPATH','www/'.PROJECT.'/');

//URL STATICHE
define('ABSOLUTE_URL','http://localhost/'.PROJECT.'/');
define('ROOT_NAME','/'.PROJECT.'/');
define('MEDIA_URL',ROOT_NAME.'Asset');
define('IMAGE_URL',MEDIA_URL.'/Img/');

//DIRECTORY FRAMEWORKS
define('DIR_CONTROLLER','Controllers');
define('DIR_VIEW','Views');
define('DIR_MODELS','Models');


//LAYOUT BASE
define('LAYOUT',DIR_VIEW.'/Layout/layout.phtml');
//LAYOUT GRIGLIA
define('LAYOUT_GRID',DIR_VIEW.'/Layout/layoutGrid.phtml');

//TITOLO SITO
define('TITLE_SITE','New or Review design');