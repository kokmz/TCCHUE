package site.vo;

public class Paciente 
{
	private int id, id_logradouro, id_estado, cod_verif, numero_endereco, id_cep;
	
	private String nome_paciente, rg_paciente, cpf_paciente, datanasc_paciente, telefone_paciente, email_paciente, convenio_paciente, endereco_complemento, cidade_paciente;
	private Exame exame;
	private Logradouro logradouro;
	private Estado estado;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_cep() {
		return id_cep;
	}
	public void setId_cep(int id_cep) {
		this.id_cep = id_cep;
	}
	public int getCod_verif(){
		return cod_verif;
	}
	public int getId_logradouro() {
		return id_logradouro;
	}
	public void setId_logradouro(int id_logradouro) {
		this.id_logradouro = id_logradouro;
	}
	public int getId_estado() {
		return id_estado;
	}
	public void setId_estado(int id_estado) {
		this.id_estado = id_estado;
	}
	public String getEndereco_complemento() {
		return endereco_complemento;
	}
	public void setEndereco_complemento(String endereco_complemento) {
		this.endereco_complemento = endereco_complemento;
	}
	public void setCod_verif(int cod_verif){
		this.cod_verif = cod_verif;
	}
	public String getNome_paciente() {
		return nome_paciente;
	}
	public void setNome_paciente(String nome_paciente) {
		this.nome_paciente = nome_paciente;
	}
	public String getRg_paciente() {
		return rg_paciente;
	}
	public void setRg_paciente(String rg_paciente) {
		this.rg_paciente = rg_paciente;
	}
	public String getCpf_paciente(){
		return cpf_paciente;
	}
	public void setCpf_paciente(String cpf_paciente){
		this.cpf_paciente = cpf_paciente;
	}
	public String getTelefone_paciente(){
		return telefone_paciente;
	}
	public void setTelefone_paciente(String telefone_paciente){
		this.telefone_paciente = telefone_paciente;
	}
	public String getEmail_paciente(){
		return email_paciente;
	}
	public void setEmail_paciente(String email_paciente){
		this.email_paciente = email_paciente;
	}
	public String getDatanasc_paciente(){
		return datanasc_paciente;
	}
	public void setDatanasc_paciente(String datanasc_paciente){
		this.datanasc_paciente = datanasc_paciente;
	}
	public String getConvenio_paciente(){
		return convenio_paciente;
	}
	public void setConvenio_paciente(String convenio_paciente){
		this.convenio_paciente = convenio_paciente;
	}
	public Exame getExame() {
		return exame;
	}
	public void setExame(Exame exame) {
		this.exame = exame;
	}
	public Logradouro getLogradouro() {
		return logradouro;
	}
	public void setLogradouro(Logradouro logradouro) {
		this.logradouro = logradouro;
	}
	public String getLogradouro_complemento() {
		return endereco_complemento;
	}
	public void setLogradouro_complemento(String logradouro_complemento) {
		this.endereco_complemento = logradouro_complemento;
	}
	public Estado getEstado() {
		return estado;
	}
	public void setEstado(Estado estado) {
		this.estado = estado;
	}
	public int getNumero_endereco() {
		return numero_endereco;
	}
	public void setNumero_endereco(int numero_endereco) {
		this.numero_endereco = numero_endereco;
	}
	public String getCidade_paciente() {
		return cidade_paciente;
	}
	public void setCidade_paciente(String cidade_paciente) {
		this.cidade_paciente = cidade_paciente;
	}
	
}
