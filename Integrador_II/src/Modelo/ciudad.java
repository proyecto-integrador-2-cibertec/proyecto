package Modelo;

public class ciudad {
	
	private String Codigociudad;
	private String Nombreciudad;
	
	
	
	

	public ciudad() {
		super();
	}





	public ciudad(String nombreciudad) {
		super();
		Nombreciudad = nombreciudad;
	}





	public ciudad(String codigociudad, String nombreciudad) {
		super();
		Codigociudad = codigociudad;
		Nombreciudad = nombreciudad;
	}





	public String getCodigociudad() {
		return Codigociudad;
	}





	public void setCodigociudad(String codigociudad) {
		Codigociudad = codigociudad;
	}





	public String getNombreciudad() {
		return Nombreciudad;
	}





	public void setNombreciudad(String nombreciudad) {
		Nombreciudad = nombreciudad;
	}
	
	
	
}
