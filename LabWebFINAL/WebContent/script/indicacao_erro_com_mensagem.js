function validaFormulario(form) {
  limpaErros();
  return validaNome(form.nome) 
			&& validaRg(form.rg)
			&& validaTelefone(form.telefone)
			&& validaData(form.data)
			&& validaEndereco(form.endereco)
			&& validaNumero(form.numero)
			//&& validaComplemento(form.complemento)
			&& validaBairro(form.bairro)
			&& validaCidade(form.cidade)
			&& validaMedico(form.medico)
			&& validaEspec(form.espec)
			&& validaDatah(form.datah)
			&& validaHora(form.hora)
			&& validaEmail(form.email);
}

function validaTextoObrigatorio(campo) {
	var valido = false;
  	if (campo.value.trim() == "") {
  		campo.labels[0].className = "erro";
  		campo.focus();
	    adicionaMensagemErro("Campo '" + campo.labels[0].innerHTML + "' não pode ser vazio");
  	} else {
  		campo.labels[0].className = "";
	    valido = true;
  	}
  	
  	return valido;
}

function validaNome(campoNome) {
  return validaTextoObrigatorio(campoNome);
}

function validaRg(campoRg){
 return validaTextoObrigatorio(campoRg);
}

function validaTelefone(campoTelefone){
 return validaTextoObrigatorio(campoTelefone);
}

function validaData(campoData){
 return validaTextoObrigatorio(campoData);
}

function validaEndereco(campoEndereco){
 return validaTextoObrigatorio(campoEndereco);
}

function validaNumero(campoNumero){
 return validaTextoObrigatorio(campoNumero);
}

//function validaComplemento(campoComplemento){
//}

function validaBairro(campoBairro){
 return validaTextoObrigatorio(campoBairro);
}

function validaCidade(campoCidade){
 return validaTextoObrigatorio(campoCidade);
}

function validaMedico(campoMedico){
 return validaTextoObrigatorio(campoMedico);
}

function validaEspec(campoEspec){
 return validaTextoObrigatorio(campoEspec);
}

function validaDatah(campoDatah){
 return validaTextoObrigatorio(campoDatah);
}

function validaHora(campoHora){
 return validaTextoObrigatorio(campoHora);
}

function validaEmail(campoEmail){
 return validaTextoObrigatorio(campoEmail);
}

function adicionaMensagemErro(mensagemErro){
  var listaErro = document.getElementById("lista_erros");
  var itemErro = document.createElement('li');
  itemErro.innerHTML = mensagemErro;
  listaErro.appendChild(itemErro);
  listaErro.style.display = "block";
}

function limpaErros() {
  var listaErro = document.getElementById("lista_erros");
  while (listaErro.childNodes.length > 0) {
    listaErro.removeChild(listaErro.childNodes[0]);
  }
}
