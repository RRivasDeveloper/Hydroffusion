

function validarNombreProveedor()
{
	valor = document.getElementById("Nombre_Proveedor").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Valor');
		document.getElementById("Nombre_Proveedor").focus();
		return false;
	} else { return true;}
}

function validarRegion()
{
	valor = document.getElementById("Region").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Valor');
		document.getElementById("Region").focus();
		return false;
	} else { return true;}
}

function validarDireccion()
{
	valor = document.getElementById("Direccion").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Valor');
		document.getElementById("Direccion").focus();
		return false;
	} else { return true;}
}

function validarNIT()
{
	valor = document.getElementById("NIT").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Valor');
		document.getElementById("NIT").focus();
		return false;
	} else { return true;}
}

function validarTelefono()
{
	valor = document.getElementById("Telefono").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Valor');
		document.getElementById("Telefono").focus();
		return false;
	} else { return true;}
}


function validarProveedor()
{
	if( validarNombreProveedor() && validarRegion() && validarDireccion() && validarNIT() && validarTelefono() )
	{
		document.Proveedor.submit();
	}
}