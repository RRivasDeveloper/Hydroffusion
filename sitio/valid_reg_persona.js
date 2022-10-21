
function validarNom()
{
	valor = document.getElementById("PRIMER_NOMBRE").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Descripcion de puesto');
		document.getElementById("PRIMER_NOMBRE").focus();
		return false;
	} else { return true;}
}

function validarNom2()
{
	valor = document.getElementById("SEGUNDO_NOMBRE").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Descripcion de puesto');
		document.getElementById("SEGUNDO_NOMBRE").focus();
		return false;
	} else { return true;}
}

function validarAPE1()
{
	valor = document.getElementById("PRIMER_APELLIDO").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese PRIMER_APELLIDO');
		document.getElementById("PRIMER_APELLIDO").focus();
		return false;
	} else { return true;}
}

function validarAPE2()
{
	valor = document.getElementById("SEGUNDO_APELLIDO").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese SEGUNDO_APELLIDO');
		document.getElementById("SEGUNDO_APELLIDO").focus();
		return false;
	} else { return true;}
}

function validarDPI()
{
	valor = document.getElementById("DPI").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese DPI');
		document.getElementById("DPI").focus();
		return false;
	} else { return true;}
}

function validarDIRECCION()
{
	valor = document.getElementById("DIRECCION").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese DIRECCION');
		document.getElementById("DIRECCION").focus();
		return false;
	} else { return true;}
}

function validarTELEFONO()
{
	valor = document.getElementById("TELEFONO").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese TELEFONO');
		document.getElementById("TELEFONO").focus();
		return false;
	} else { return true;}
}

function validarEMAIL()
{
	valor = document.getElementById("EMAIL").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese EMAIL');
		document.getElementById("EMAIL").focus();
		return false;
	} else { return true;}
}

function validarCODPUESTO()
{
	indice = document.getElementById("CODPUESTO").selectedIndex;
	if( indice == null || indice== 0){
		alert('IngreseCODPUESTO');
		document.getElementById("CODPUESTO").focus();
		return false;
	} else { return true;}
}





function val3()
{
	if(validarNom() && validarNom2() && validarAPE1() && validarAPE2() &&  validarDPI() && validarDIRECCION() && validarTELEFONO() && validarEMAIL() && validarCODPUESTO())
	{
		document.persona.submit();
	}
}
