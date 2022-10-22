

function validarDescripcion()
{
	valor = document.getElementById("ROL_Descripcion").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Descripcion del rol');
		document.getElementById("ROL_Descripcion").focus();
		return false;
	} else { return true;}
}

function validar2()
{
	if(validarDescripcion())
	{
		document.rol.submit();
	}
}