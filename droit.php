<?php
$cnx=mysqli_connect("localhost","root","","bd2025sp"); 
$idu=$_POST["idu"];
$nd=$_POST["nom"];
$req1="select * from utilisateur where idUtil='$idu'";
$res=mysqli_query($req1,$cnx);
if (mysqli_num_rows($cnx)==0) {
    echo("Erreur : Utilisateur inexistant");
}
else {
    
    
}
mysqli_close($cnx);
?>