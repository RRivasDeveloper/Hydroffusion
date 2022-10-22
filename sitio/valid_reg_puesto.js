

function validarDescripcion()
{
	valor = document.getElementById("PUE_Descripcion").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Descripcion de puesto');
		document.getElementById("PUE_Descripcion").focus();
		return false;
	} else { return true;}
}

function vali()
{
	if( validarDescripcion())
	{
		document.puesto.submit();
	}
}
