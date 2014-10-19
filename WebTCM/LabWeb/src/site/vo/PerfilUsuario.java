package site.vo;

public enum PerfilUsuario {
	ADMIN(1),
	GESTOR(2),
	DEFAULT(3);	


	private int value;
	
    private PerfilUsuario(int value) {
        this.value = value;
    }
    
    public static PerfilUsuario fromValue(int value) {  
        for (PerfilUsuario my: PerfilUsuario.values()) {  
            if (my.value == value) {  
                return my;  
            }  
        }  
  
        return null;  
    }  

	public boolean isAdmin() {
		return this.value == ADMIN.value;
	}

	public boolean isGestor() {
		return this.value == GESTOR.value;
	}
	
	public boolean isDefault() {
		return this.value == DEFAULT.value;
	}
}

