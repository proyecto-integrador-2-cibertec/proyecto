package Modelo;

public class TipoDocumento {
	
	private String CodigoDocumento;
    private String NombreDocumento;
    
	public TipoDocumento(String codigoDocumento, String nombreDocumento) {
		super();
		CodigoDocumento = codigoDocumento;
		NombreDocumento = nombreDocumento;
	}

	public String getCodigoDocumento() {
		return CodigoDocumento;
	}

	public void setCodigoDocumento(String codigoDocumento) {
		CodigoDocumento = codigoDocumento;
	}

	public String getNombreDocumento() {
		return NombreDocumento;
	}

	public void setNombreDocumento(String nombreDocumento) {
		NombreDocumento = nombreDocumento;
	}
	
	
    
    

}
