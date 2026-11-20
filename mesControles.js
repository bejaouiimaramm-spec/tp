function alpha(ch)
{
    let cp=0;
    ch=ch.toUpperCase();
	let valid=true;
    do{
        if(ch[cp]>="A" && ch[cp]<="Z" ||ch[cp]==" " )
        {
            cp=cp+1;
        }
        else
        {
            valid=false;
        }
    }
    while(valid==true && cp<ch.length);
    return valid;
}
function verif1() {
    /*********recuperation des donneees */
    id=document.getElementById("id").value;
    np=document.getElementById("np").value;
    /******test sur l id */
    if (id.length()!=4 || !(id[0]=='U') ) {
        alert("id invalide");
        return false
    }
    /********test sur le nomprenom */
    if (alpha(ch)==false || np.indexOf(" ")==-1 || np.length()<5 || np.length()>50 ) {
        alert("nom prénom invalide");
        return false
    }
    return true
}
function verif2(){
    /*********recuperation des donneees */
    nom=document.getElementById("nom").selectedIndex;
    da=document.getElementsByName("da");
    /******test sur le nom */
    if (nom==0) {
        alert("Sélection obligatoire d’un document");
        return false
    }
    for (let i = 0; i < da.length; i++) {
       if (!da[i].checked) {
           alert("Sélection obligatoire d’un ou de plusieurs droits d’accès");
           return false
       }        
    }
}
function choix1() {
    if (document.getElementById("e").checked) {
        document.getElementById("l").checked=true;
    }
}
function choix2() {
    if (document.getElementById("l").checked) {
        document.getElementById("e").checked=true;
        document.getElementById("i").checked=true;
    }
}
function choix3() {
    if (document.getElementById("i").checked) {
        document.getElementById("l").checked=true;
    }
}