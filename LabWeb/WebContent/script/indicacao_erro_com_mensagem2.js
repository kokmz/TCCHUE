function validaFormulario(form) {
  limpaErros();
  return validaNome(form.nome) 
			&& validaCidade(form.cidade)
			&& validaEmail(form.email)
			&& validaMensagem(form.mensagem);
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

function validaCidade(campoCidade){
 return validaTextoObrigatorio(campoCidade);
}

function validaEmail(campoEmail){
 return validaTextoObrigatorio(campoEmail);
}

function validaMensagem(campoMensagem){
 return validaTextoObrigatorio(campoMensagem);
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
