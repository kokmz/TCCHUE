package site.vo;

public class Status
{
	int id_status;
	String status_nome;
	
	
	public Status() {
		super();
	}
	
	public String getStatus_nome() {
		return status_nome;
	}
	public void setStatus_nome(String status_nome) {
		this.status_nome = status_nome;
	}
	public int getId_status() {
		return id_status;
	}
	public void setId_status(int id_status) {
		this.id_status = id_status;
	}

}