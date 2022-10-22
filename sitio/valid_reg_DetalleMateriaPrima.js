

function validarCodigo_Materia_Prima()
{

	indice = document.getElementById("Codigo_Materia_Prima").selectedIndex;
	if( indice == null || indice==0 ) {
		alert('Seleccione Codigo de Materia_Prima');
		document.getElementById("Codigo_Materia_Prima").focus();
		return false;
	} else { return true;}
}


function validarCodigo_Producto()
{
	indice = document.getElementById("Codigo_Producto").selectedIndex;
	if( indice == null || indice==0 ) {
		alert('Seleccione Producto');
		document.getElementById("Codigo_Producto").focus();
		return false;
	} else { return true;}
}



function validarCantidad()
{
	valor = document.getElementById("Cantidad").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese valor');
		document.getElementById("Cantidad").focus();
		return false;
	} else { return true;}
}

function validarMedida()
{

	indice = document.getElementById("Medida").selectedIndex;
	if( indice == null || indice==0 ) {
		alert('Seleccione Medida');
		document.getElementById("Medida").focus();
		return false;
	} else { return true;}
}



function ValidacionDetalleMateriaPrima()
{
	if( validarCodigo_Materia_Prima() && validarCodigo_Producto() && validarCantidad() && validarMedida())
	{
		document.DetalleMateriaPrima.submit();
	}
}