<?php
include "../models/Characters.php";;
session_start();

$_SESSION["characters_factory"]["characters"]->delete(array("id" => $_POST["id"]));