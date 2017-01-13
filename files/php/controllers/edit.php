<?php
include "../models/Characters.php";;
session_start();

$_SESSION["characters_factory"]["characters"]->update(array("id" => $_POST["id"], "prop" => $_POST["prop"], "value" => trim($_POST["value"])));