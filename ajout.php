<?php
$cnx=mysqli_connect("localhost","root","","bd2025sp");
$id=$_POST["id"];
$np=$_POST["np"];
$req1="insert into utilisateur values('$id','$np')";
$res1=mysqli_query($cnx,$req1);
if (mysqli_affected_rows($cnx)==1) {
    echo("Utilisateur ajouté avec succès");
}
else {
    echo("Erreur d’insertion des données");
}
mysqli_close($cnx);
?>