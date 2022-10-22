


function validarCodigo_Proveedor()
{

	indice = document.getElementById("Codigo_Proveedor").selectedIndex;
	if( indice == null || indice==0 ) {
		alert('Seleccione proveedpr');
		document.getElementById("Codigo_Proveedor").focus();
		return false;
	} else { return true;}
}


function validarFecha_Ingreso()
{
	valor = document.getElementById("Fecha_Ingreso").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese valor');
		document.getElementById("Fecha_Ingreso").focus();
		return false;
	} else { return true;}
}

function validarLote()
{
	valor = document.getElementById("Lote").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese valor');
		document.getElementById("Lote").focus();
		return false;
	} else { return true;}
}

function validarPlacas_Vehiculo()
{
	valor = document.getElementById("Placas_Vehiculo").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese valor');
		document.getElementById("Placas_Vehiculo").focus();
		return false;
	} else { return true;}
}

function validarProducto()
{
	indice = document.getElementById("Codigo_Producto").selectedIndex;
	if( indice == null || indice==0 ) {
		alert('Seleccione producto');
		document.getElementById("Codigo_Producto").focus();
		return false;
	} else { return true;}
}


function ValidacionMateriaPrima()
{
	if( validarCodigo_Proveedor() && validarFecha_Ingreso() && validarLote() && validarPlacas_Vehiculo() && validarProducto())
	{
		document.MateriaPrima.submit();
	}
}