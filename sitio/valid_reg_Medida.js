function validarDescripcionMedida()
{
	valor = document.getElementById("Descripcion_Medida").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Valor');
		document.getElementById("Descripcion_Medida").focus();
		return false;
	} else { return true;}
}

function validarNomenclaturaMedida()
{
	valor = document.getElementById("nm_Medida").value;
	if( valor == null || valor.length == 0 || /^\s+$/.test(valor) ) {
		alert('Ingrese Valor');
		document.getElementById("nm_Medida").focus();
		return false;
	} else { return true;}
}

function validarMedida()
{
	if( validarDescripcionMedida() && validarNomenclaturaMedida())
	{
		document.Medida2.submit();
	}
}