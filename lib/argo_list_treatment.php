<?php


$sqlRequest = "SELECT * FROM `papyrus`";
$argo_table = mysqli_query($connexion, $sqlRequest);
$listeArgos = mysqli_fetch_all($argo_table, MYSQLI_ASSOC);

// echo "<pre>";
// print_r($listeArgos);
// echo "</pre>";

