package Modelo;

public class PaqueteVuelos {
 
	
	private String cod_vuelo;
	private String origen;
	private String destino;
	private String hora_salida;
	private String hora_llegada;
	private String tipo_vuelo;
	private double precio;
	private int num_asientos;
	
	
	
	
	public PaqueteVuelos() {
		super();
	}


	public PaqueteVuelos(String cod_vuelo, String origen, String destino, String hora_salida, String hora_llegada,
			String tipo_vuelo, double precio, int num_asientos) {
		super();
		this.cod_vuelo = cod_vuelo;
		this.origen = origen;
		this.destino = destino;
		this.hora_salida = hora_salida;
		this.hora_llegada = hora_llegada;
		this.tipo_vuelo = tipo_vuelo;
		this.precio = precio;
		this.num_asientos = num_asientos;
	}


	public String getCod_vuelo() {
		return cod_vuelo;
	}


	public void setCod_vuelo(String cod_vuelo) {
		this.cod_vuelo = cod_vuelo;
	}


	public String getOrigen() {
		return origen;
	}


	public void setOrigen(String origen) {
		this.origen = origen;
	}


	public String getDestino() {
		return destino;
	}


	public void setDestino(String destino) {
		this.destino = destino;
	}


	public String getHora_salida() {
		return hora_salida;
	}


	public void setHora_salida(String hora_salida) {
		this.hora_salida = hora_salida;
	}


	public String getHora_llegada() {
		return hora_llegada;
	}


	public void setHora_llegada(String hora_llegada) {
		this.hora_llegada = hora_llegada;
	}


	public String getTipo_vuelo() {
		return tipo_vuelo;
	}


	public void setTipo_vuelo(String tipo_vuelo) {
		this.tipo_vuelo = tipo_vuelo;
	}


	public double getPrecio() {
		return precio;
	}


	public void setPrecio(double precio) {
		this.precio = precio;
	}


	public int getNum_asientos() {
		return num_asientos;
	}


	public void setNum_asientos(int num_asientos) {
		this.num_asientos = num_asientos;
	}
	
	
	
	
	
	
}
