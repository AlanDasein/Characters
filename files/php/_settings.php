<?php

include "files/php/models/Connection.php";
include "files/php/models/Helper.php";
include "files/php/models/Characters.php";

$connection = new Connection("root", "", "al_factory");

$settings = array(
    "langs" => array("sp"),
    "pages" => array("home", "creator", "characters", "help", "contact"),
    "ranges" => array(
        "age" => array("min" => 5, "max" => 100, "default" => array("min" => 10, "max" => 60)),
        "options" => array("min" => 1, "max" => 5, "default" => array("min" => 3, "max" => 5))
    ),
    "fake_data" => array("visitors" => 1471, "characters" => 3289, "exports" => 588, "votes" => 85)
);

$time = time();

function ignore_divide_by_zero($errno, $errstring) {
    return ($errstring == 'Division by zero');
}

set_error_handler('ignore_divide_by_zero', E_WARNING);