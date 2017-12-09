package Modelo;

public class Comprar {
	
	private int id_pasajes_c;
	private String id_reserva_r;
	private String cod_vuelo;
	private String tipo_pasaje_r;
	private String codigo_pais;
	private String destino_c;	
	private String fecha_salida_c;
	private String num_doc;
	private double  precio_c;
	private int num_asientos;
	public Comprar(int id_pasajes_c, String id_reserva_r, String cod_vuelo, String tipo_pasaje_r, String codigo_pais,
			String destino_c, String fecha_salida_c, String num_doc, double precio_c, int num_asientos) {
		super();
		this.id_pasajes_c = id_pasajes_c;
		this.id_reserva_r = id_reserva_r;
		this.cod_vuelo = cod_vuelo;
		this.tipo_pasaje_r = tipo_pasaje_r;
		this.codigo_pais = codigo_pais;
		this.destino_c = destino_c;
		this.fecha_salida_c = fecha_salida_c;
		this.num_doc = num_doc;
		this.precio_c = precio_c;
		this.num_asientos = num_asientos;
	}
	public int getId_pasajes_c() {
		return id_pasajes_c;
	}
	public void setId_pasajes_c(int id_pasajes_c) {
		this.id_pasajes_c = id_pasajes_c;
	}
	public String getId_reserva_r() {
		return id_reserva_r;
	}
	public void setId_reserva_r(String id_reserva_r) {
		this.id_reserva_r = id_reserva_r;
	}
	public String getCod_vuelo() {
		return cod_vuelo;
	}
	public void setCod_vuelo(String cod_vuelo) {
		this.cod_vuelo = cod_vuelo;
	}
	public String getTipo_pasaje_r() {
		return tipo_pasaje_r;
	}
	public void setTipo_pasaje_r(String tipo_pasaje_r) {
		this.tipo_pasaje_r = tipo_pasaje_r;
	}
	public String getCodigo_pais() {
		return codigo_pais;
	}
	public void setCodigo_pais(String codigo_pais) {
		this.codigo_pais = codigo_pais;
	}
	public String getDestino_c() {
		return destino_c;
	}
	public void setDestino_c(String destino_c) {
		this.destino_c = destino_c;
	}
	public String getFecha_salida_c() {
		return fecha_salida_c;
	}
	public void setFecha_salida_c(String fecha_salida_c) {
		this.fecha_salida_c = fecha_salida_c;
	}
	public String getNum_doc() {
		return num_doc;
	}
	public void setNum_doc(String num_doc) {
		this.num_doc = num_doc;
	}
	public double getPrecio_c() {
		return precio_c;
	}
	public void setPrecio_c(double precio_c) {
		this.precio_c = precio_c;
	}
	public int getNum_asientos() {
		return num_asientos;
	}
	public void setNum_asientos(int num_asientos) {
		this.num_asientos = num_asientos;
	}
	
	
}
