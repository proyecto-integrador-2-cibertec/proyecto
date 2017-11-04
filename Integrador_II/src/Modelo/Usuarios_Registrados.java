package Modelo;
import java.io.Serializable;
public class Usuarios_Registrados implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdUsuario;
	private String NombreUsuario;
	private String ApellidoUsuario;
	private String FechaNacimiento;
	private String Correo;
	private String Password;
    private String CodigoPais;
    private String TipoDocumento;
    private String NumeroDocumento;
    private boolean Admin;
    private boolean Bloqueado;
    private int NumeroIntentos;
    
    
    
	public Usuarios_Registrados() {
		super();
	}
	public Usuarios_Registrados( String nombreUsuario, String apellidoUsuario, String fechaNacimiento, String correo,
			String password, String codigoPais, String tipoDocumento, String numeroDocumento) {
		super();
	
		NombreUsuario = nombreUsuario;
		ApellidoUsuario = apellidoUsuario;
		FechaNacimiento = fechaNacimiento;
		Correo = correo;
		Password = password;
		CodigoPais = codigoPais;
		TipoDocumento = tipoDocumento;
		NumeroDocumento = numeroDocumento;
		
		
	}
	public Usuarios_Registrados(int idUsuario, String nombreUsuario, String apellidoUsuario, String fechaNacimiento, String correo,
			String password, String codigoPais, String tipoDocumento, String numeroDocumento, boolean admin,
			boolean bloqueado, int numeroIntentos) {
		super();
		IdUsuario = idUsuario;
		NombreUsuario = nombreUsuario;
		ApellidoUsuario = apellidoUsuario;
		FechaNacimiento = fechaNacimiento;
		Correo = correo;
		Password = password;
		CodigoPais = codigoPais;
		TipoDocumento = tipoDocumento;
		NumeroDocumento = numeroDocumento;
		Admin = admin;
		Bloqueado = bloqueado;
		NumeroIntentos = numeroIntentos;
	}

	public String getTipoDocumento() {
		return TipoDocumento;
	}

	public void setTipoDocumento(String tipoDocumento) {
		TipoDocumento = tipoDocumento;
	}

	public int getIdUsuario() {
		return IdUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		IdUsuario = idUsuario;
	}

	public String getNombreUsuario() {
		return NombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		NombreUsuario = nombreUsuario;
	}

	public String getApellidoUsuario() {
		return ApellidoUsuario;
	}

	public void setApellidoUsuario(String apellidoUsuario) {
		ApellidoUsuario = apellidoUsuario;
	}

	public String getFechaNacimiento() {
		return FechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		FechaNacimiento = fechaNacimiento;
	}

	public String getCorreo() {
		return Correo;
	}

	public void setCorreo(String correo) {
		Correo = correo;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getCodigoPais() {
		return CodigoPais;
	}

	public void setCodigoPais(String codigoPais) {
		CodigoPais = codigoPais;
	}

	
	public String getNumeroDocumento() {
		return NumeroDocumento;
	}

	public void setNumeroDocumento(String numeroDocumento) {
		NumeroDocumento = numeroDocumento;
	}

	

	public boolean isAdmin() {
		return Admin;
	}
	public void setAdmin(boolean admin) {
		Admin = admin;
	}
	public boolean isBloqueado() {
		return Bloqueado;
	}
	public void setBloqueado(boolean bloqueado) {
		Bloqueado = bloqueado;
	}
	public int getNumeroIntentos() {
		return NumeroIntentos;
	}

	public void setNumeroIntentos(int numeroIntentos) {
		NumeroIntentos = numeroIntentos;
	}
}