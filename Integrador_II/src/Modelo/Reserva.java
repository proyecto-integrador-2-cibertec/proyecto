package Modelo;

public class Reserva {
	
	private String id_reserva_r ;
	private String num_doc ;
	private String nom_pasajero_r;
	private String tipo_pasaje_r;
	private String fecha_salida_r ;
	private String ciudad_origen_r ;
	private String ciudad_destino_r ;
	private String codigo_pais_r;
	  
		public Reserva() {
			super();
		}
	
		
		
	
	public Reserva(String id_reserva_r, String tipo_pasaje_r) {
			super();
			this.id_reserva_r = id_reserva_r;
			this.tipo_pasaje_r = tipo_pasaje_r;
		}




	public Reserva(String id_reserva_r, String num_doc, String nom_pasajero_r, String tipo_pasaje_r,
			String fecha_salida_r, String ciudad_origen_r, String ciudad_destino_r, String codigo_pais_r) {
		super();
		this.id_reserva_r = id_reserva_r;
		this.num_doc = num_doc;
		this.nom_pasajero_r = nom_pasajero_r;
		this.tipo_pasaje_r = tipo_pasaje_r;
		this.fecha_salida_r = fecha_salida_r;
		this.ciudad_origen_r = ciudad_origen_r;
		this.ciudad_destino_r = ciudad_destino_r;
		this.codigo_pais_r = codigo_pais_r;
	}




	public String getId_reserva_r() {
		return id_reserva_r;
	}




	public void setId_reserva_r(String id_reserva_r) {
		this.id_reserva_r = id_reserva_r;
	}




	public String getNum_doc() {
		return num_doc;
	}




	public void setNum_doc(String num_doc) {
		this.num_doc = num_doc;
	}




	public String getNom_pasajero_r() {
		return nom_pasajero_r;
	}




	public void setNom_pasajero_r(String nom_pasajero_r) {
		this.nom_pasajero_r = nom_pasajero_r;
	}




	public String getTipo_pasaje_r() {
		return tipo_pasaje_r;
	}




	public void setTipo_pasaje_r(String tipo_pasaje_r) {
		this.tipo_pasaje_r = tipo_pasaje_r;
	}




	public String getFecha_salida_r() {
		return fecha_salida_r;
	}




	public void setFecha_salida_r(String fecha_salida_r) {
		this.fecha_salida_r = fecha_salida_r;
	}




	public String getCiudad_origen_r() {
		return ciudad_origen_r;
	}




	public void setCiudad_origen_r(String ciudad_origen_r) {
		this.ciudad_origen_r = ciudad_origen_r;
	}




	public String getCiudad_destino_r() {
		return ciudad_destino_r;
	}




	public void setCiudad_destino_r(String ciudad_destino_r) {
		this.ciudad_destino_r = ciudad_destino_r;
	}




	public String getCodigo_pais_r() {
		return codigo_pais_r;
	}




	public void setCodigo_pais_r(String codigo_pais_r) {
		this.codigo_pais_r = codigo_pais_r;
	}





}
