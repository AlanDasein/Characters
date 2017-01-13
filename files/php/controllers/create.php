<?php

$data = json_decode($_POST["data"]);
$labels = array();
$values = array();

$aux = Helper::getProperties($_SESSION["characters_factory"]["characters"]);

foreach($aux as $k => $v) {
    if($k > 2) $labels[] = $v->name;
}

foreach($data->categories as $k => $v) {
    if($v) {
        $val = $data->values[$k];
        if($k === 0 || $k === 2 || $k === 4) {
            $index = count($val) > 1 ? $val[rand(0, count($val) - 1)] : (
                $val[0] < 0 ? (rand(0, ($k === 0 ? 1 : count($_SESSION["characters_factory"]["items"][$k === 2 ? 0 : 1]) - 1))) : $val[0]
            );
            $values[$labels[$k]] = $k === 0 ? (string)$content["common"]->groupCategory->item[$index] : $_SESSION["characters_factory"]["items"][$k === 2 ? 0 : 1][$index];
            if($k === 0) $sex = $index + 1;
        }
        else {
            $numbers = $val[0] < 0 ? [0] : (
                Helper::checkPair(
                    array(
                        "val" => array("min" => $val[0], "max" => $val[1]),
                        "default" => array(
                            "min" => $settings["ranges"][$k === 1 ? "age" : "options"]["min"],
                            "max" => $settings["ranges"][$k === 1 ? "age" : "options"]["max"])
                    )
                )
            );
            $index = count($numbers) === 1 ? 0 : rand($numbers[0], $numbers[1]);
            if($k === 1) {
                $age = $index;
                $values[$labels[$k]] = $age;
            }
            else {
                $where = array();
                if(!empty($sex)) $where[] = "AND (`sex` = 0 OR `sex` = ".$sex.")";
                if(!empty($age)) $where[] = "AND `age` <= ".$age;
                $table = "ch_".($k === 6 || $k === 7 ? "features" : ($k === 5 ? "professions" : $labels[$k]));
                $limit = $k < 6 ? 1 : $index;
                $param = array ("oper" => "general", "table" => $table, "sort" => "RAND()", "limit" => $limit, "lang" => $settings["langs"][$lang]);
                $stop = $k === 3 ? 3 : 1;
                $aux = array();
                for($i = 0;$i < $stop;$i++) {
                    if($k === 3) $where[count($where) - ($i < 2 ? $i : 1)] = "AND `type` = $i";
                    if($k === 6 || $k === 7) $where[] = "AND (`type` = 0 OR `type` = ".($k === 6 ? 2 : 1).")";
                    if($k === 9 || $k === 10) {
                        $val = "";
                        if(!empty($labels["likes"])) $val .= str_replace(", ", "', '", $labels["likes"]);
                        if(!empty($labels["dislikes"])) $val .= (($val === "" ? "" : "', '").str_replace(", ", "', '", $labels["dislikes"]));
                        if($val !== "") $where[] = "AND `value` NOT IN ('".$val."')";
                    }
                    $param["where"] = implode(" ", $where);
                    $aux[] = Helper::applyFormat(implode(", ", Helper::getRecords($connection, $param)), empty($sex) ? 1 : $sex, $lang);
                }
                $values[$labels[$k]] = implode(", ", $aux);
            }
        }
    }
    else $values[$labels[$k]] = "";

    if(!empty($age) && $age < 12) $values["sexuality"] = "";
}

$values["name"] = "";
$values["notes"] = "";

$_SESSION["characters_factory"]["characters"]->add($values);

if(empty($_SESSION["characters_factory_admin"])) Helper::manageCounters("files/inc/characters");