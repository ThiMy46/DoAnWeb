package model;

public class ThongTinHVEntry {
	
	private int idHV;
	private String  tenHV ;
	private String  ngaysinh ;
	private String nu;
	private String SDT;
	private String diachi;
	
	public  ThongTinHVEntry() {};
	public  ThongTinHVEntry(int idHV,String tenHV,String  ngaysinh,String nu,String SDT,String diachi ) {
		
		this.idHV=idHV;
		this.tenHV=tenHV;
		this.ngaysinh=ngaysinh;
		this.nu=nu;
		this.SDT=SDT;
		this.diachi=diachi;
	}
	public int getIdHV() {
		return idHV;
	}
	public void setIdHV(int idHV) {
		this.idHV = idHV;
	}
	public String getTenHV() {
		return tenHV;
	}
	public void setTenHV(String tenHV) {
		this.tenHV = tenHV;
	}
	public String getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getNu() {
		return nu;
	}
	public void setNu(String nu) {
		this.nu = nu;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	
}
