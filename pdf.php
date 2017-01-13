<?php
include "files/php/_settings.php";
session_start();

if(empty($_SESSION["characters_factory_admin"])) Helper::manageCounters("files/inc/exports");

$lang = Helper::getParameters("l", $settings["langs"]);
$page = Helper::getParameters("p", $settings["pages"]);

$path = "files/xml/".$settings["langs"][$lang]."/";

$content = array("common" => simplexml_load_file($path."_global.xml"), "specific" => simplexml_load_file($path.$settings["pages"][$page].".xml"));

$pdf = 1;

include "files/php/views/layout/list.php";

include("vendor/mpdf/mpdf.php");
$mpdf=new mPDF('c');

$mpdf->WriteHTML($output);
$mpdf->Output();
exit;