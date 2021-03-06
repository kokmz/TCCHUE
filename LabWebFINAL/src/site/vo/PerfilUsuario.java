package site.vo;

public enum PerfilUsuario {
	ADMIN(1),
	GESTOR(2);


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
	
}

