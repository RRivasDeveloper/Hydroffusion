function validar_user()
{
	indice = document.getElementById("read_cod_user_up").selectedIndex;
	if( indice == null || indice==0 ) {
		alert('Seleccione Usuario');
		document.getElementById("read_cod_user_up").focus();
		return false;
	} else { return true;}
}

function Validar()
{
	if(validar_user())
	{
		document.select_up_user.submit();
	}
}