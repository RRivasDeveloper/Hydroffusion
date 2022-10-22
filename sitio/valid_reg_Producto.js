function validarNomProd()
{
	valor = document.getElementById("Descripcion_Producto").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Valor');
		document.getElementById("Descripcion_Producto").focus();
		return false;
	} else { return true;}
}

function validarProcucto()
{
	if(validarNomProd())
	{
		document.Producto.submit();
	}
}