package Modelo;

public class Cotizar {
	
	private int id_cotizar;
	private String origen_c;
	private String destino_c;
	private String fecha_ida_c;
	private String fecha_salida_c;
	private String hora_s_c;	
	private String hora_ll_c;
	private String id_tipo_p_c;
	private int precio_c;
	
	
	
	

	public Cotizar(int id_cotizar, String origen_c, String destino_c, String fecha_ida_c, String fecha_salida_c,
			String hora_s_c, String hora_ll_c, String id_tipo_p_c, int precio_c) {
		super();
		this.id_cotizar = id_cotizar;
		this.origen_c = origen_c;
		this.destino_c = destino_c;
		this.fecha_ida_c = fecha_ida_c;
		this.fecha_salida_c = fecha_salida_c;
		this.hora_s_c = hora_s_c;
		this.hora_ll_c = hora_ll_c;
		this.id_tipo_p_c = id_tipo_p_c;
		this.precio_c = precio_c;
	}





	public Cotizar() {
		super();
	}





	public int getId_cotizar() {
		return id_cotizar;
	}





	public void setId_cotizar(int id_cotizar) {
		this.id_cotizar = id_cotizar;
	}





	public String getOrigen_c() {
		return origen_c;
	}





	public void setOrigen_c(String origen_c) {
		this.origen_c = origen_c;
	}





	public String getDestino_c() {
		return destino_c;
	}





	public void setDestino_c(String destino_c) {
		this.destino_c = destino_c;
	}





	public String getFecha_ida_c() {
		return fecha_ida_c;
	}





	public void setFecha_ida_c(String fecha_ida_c) {
		this.fecha_ida_c = fecha_ida_c;
	}





	public String getFecha_salida_c() {
		return fecha_salida_c;
	}





	public void setFecha_salida_c(String fecha_salida_c) {
		this.fecha_salida_c = fecha_salida_c;
	}





	public String getHora_s_c() {
		return hora_s_c;
	}





	public void setHora_s_c(String hora_s_c) {
		this.hora_s_c = hora_s_c;
	}





	public String getHora_ll_c() {
		return hora_ll_c;
	}





	public void setHora_ll_c(String hora_ll_c) {
		this.hora_ll_c = hora_ll_c;
	}





	public String getId_tipo_p_c() {
		return id_tipo_p_c;
	}





	public void setId_tipo_p_c(String id_tipo_p_c) {
		this.id_tipo_p_c = id_tipo_p_c;
	}





	public int getPrecio_c() {
		return precio_c;
	}





	public void setPrecio_c(int precio_c) {
		this.precio_c = precio_c;
	}

	

}
