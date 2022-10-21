
function validarNom2()
{
	valor = document.getElementById("Nombre_Usuario").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese nombre de usuario');
		document.getElementById("Nombre_Usuario").focus();
		return false;
	} else { return true;}
}

function validarPass2()
{
	valor = document.getElementById("pass").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese contraseña');
		document.getElementById("pass").focus();
		return false;
	} else { return true;}
}

function validarPer2()
{
	indice = document.getElementById("cod_persona").selectedIndex;
	if( indice == null || indice==0 ) {
		alert('Seleccione Persona');
		document.getElementById("cod_persona").focus();
		return false;
	} else { return true;}
}

function validarRol2()
{
	indice = document.getElementById("Codigo_Rol").selectedIndex;
	if( indice == null || indice==0 ) {
		alert('Seleccione Rol');
		document.getElementById("Codigo_Rol").focus();
		return false;
	} else { return true;}
}

function ValidacionUsu2()
{
	if(validarNom2() && validarPass2() && validarPer2() && validarRol2())
	{
		document.Usu2.submit();
	}
}