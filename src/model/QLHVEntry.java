package model;



public class QLHVEntry {

	private int id;
	
	private String ten;
	private String  ngaysinh ;

	public String getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	private String diaChi;
	private String SDT;
	private String nu;
	

	

	

	public QLHVEntry(Integer id, String ten,String NgaySinh,  String DiaChi, String SDT,String Nu) {
		this.id = id;
		this.ten = ten;
		this.ngaysinh = NgaySinh;
		this.diaChi = DiaChi;
		this.SDT = SDT;
		this.nu=Nu;

	

	}
	public QLHVEntry() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}

	
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getNu() {
		return nu;
	}
	public void setNu(String nu) {
		this.nu = nu;
	}




}

