<?php

Helper::setRecords($connection, "gn_contact", array(
    "time" => "NOW()",
    "ip" => Helper::getIp(),
    "name" => trim($_POST["name"]),
    "email" => Helper::validMail($_POST["email"]) ? $_POST["email"] : "",
    "subject" => trim($_POST["subject"]),
    "message" => trim($_POST["message"])
));

$_SESSION["characters_factory"]["alert"] = (string)$content["specific"]->text[3];