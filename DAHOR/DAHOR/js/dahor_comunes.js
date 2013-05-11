/*Variables globales*/
//Sirve para indicar si la pagina que se esta visualizando es la pagina de inicio
var ocultarbotonpresup;


/*Métodos para el control del formulario de presupuestos*/
//Funcion para activar los textbox de horas
function setHorarioVisible() 
{
    var ctrhoraDesde = document.getElementById(tbHoraDesde);
    var ctrhoraHasta = document.getElementById(tbHoraHasta);
    var ctrHorario = document.getElementById(ddlHorario);
    var item = ctrHorario.options[ctrHorario.selectedIndex].value;

    if (item != "-1" && item != "a") {
        ctrhoraHasta.disabled = false;
        ctrhoraDesde.disabled = false;
        ctrhoraHasta.className = "tbinfo";
        ctrhoraDesde.className = "tbinfo";
    }
    else {
        ctrhoraHasta.disabled = "disabled";
        ctrhoraDesde.disabled = "disabled";
        ctrhoraHasta.className = "tbinfodisabled";
        ctrhoraDesde.className = "tbinfodisabled";
    }
}

function mostrarInfoFija() {
    var divInfoFija = document.getElementById("infofija");
    if (ocultarbotonpresup) {
        divInfoFija.className = "ocultar";        
    }
}

/*Métodos para el manejo de la capa superior de envio de correo*/
function ajustarTamañoCapaSup() {
    var divCapaSup = document.getElementById("capasuperior");
    divCapaSup.style.height = screen.availHeight + "px";
    divCapaSup.style.width = screen.availWidth + "px";    
}

function mostrarEnviando() {
    var divCapaSup = document.getElementById("capasuperior");
    var divImgSending = document.getElementById("enviando");
    divCapaSup.style.visibility = "visible";
    divCapaSup.style.display = "block";
    divImgSending.style.visibility = "visible";
    divImgSending.style.display = "block";
    return true;
}

function resizeImageSending() {    
    document.getElementById("enviando").style.top = (heightViewport() / 2) + (yScroll() - 35) + "px";
    document.getElementById("enviando").style.left = (widthViewport() / 2) - 45 + "px";
}


/*Funcion para activar o desactivar el campo de texto de la experiencia profesional*/
function configurarTextoExperiencia(rblId, lenght, tbExperienciaId, rfValidatorId) {
    var selectedValue = getSelectedValueFromRbl(rblId, lenght);
    var tbExp = document.getElementById(tbExperienciaId);
    if (selectedValue == "si") {
        tbExp.disabled = false;
        tbExp.className = "";
        ValidatorEnable(document.getElementById(rfValidatorId), true);
    }
    else {
        tbExp.disabled = true;
        tbExp.className = "tbExpDisable";
        ValidatorEnable(document.getElementById(rfValidatorId), false);
    }
}

function getSelectedValueFromRbl(rblId, lenght) {
    var rbl = document.getElementById(rblId);
    var rblChild = null;
    var sRetorno = null;
    for (i = 0; i < lenght; i++) {
        rblChild = document.getElementById(rblId + "_" + i.toString());
        if (rblChild.checked)
            sRetorno = rblChild.value;
    }
    return sRetorno;
}