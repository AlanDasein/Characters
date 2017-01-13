<?php

$values = json_decode($_POST["data"]);
$param = array("time" => "NOW()", "ip" => Helper::getIp());

foreach($values->values as $k => $v) $param["p".($k + 1)] = (int)$v[0] + 1;

Helper::setRecords($connection, "gn_survey", $param);

$_SESSION["characters_factory"]["survey"] = 1;
$_SESSION["characters_factory"]["alert"] = (string)$content["specific"]->text[4];