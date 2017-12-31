package model;

public class QLLHEntry_GV {
	private int id;
	private String tenkhoahoc;
	private String ngaybatdau;
	private String  ngayketthuc ;
	private String  phong ;

	public String getPhong() {
		return phong;
	}
	public void setPhong(String phong) {
		this.phong = phong;
	}
	public QLLHEntry_GV() {}
	public QLLHEntry_GV(Integer id, String tenkhoahoc, String ngaybatdau,String ngayketthuc,String  phong ) {
		
		this.id = id;
		this.tenkhoahoc = tenkhoahoc;
		this.ngaybatdau = ngaybatdau;
		this.ngayketthuc = ngayketthuc;
		this.phong=phong;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenkhoahoc() {
		return tenkhoahoc;
	}
	public void setTenkhoahoc(String tenkhoahoc) {
		this.tenkhoahoc = tenkhoahoc;
	}
	public String getNgaybatdau() {
		return ngaybatdau;
	}
	public void setNgaybatdau(String ngaybatdau) {
		this.ngaybatdau = ngaybatdau;
	}
	public String getNgayketthuc() {
		return ngayketthuc;
	}
	public void setNgayketthuc(String ngayketthuc) {
		this.ngayketthuc = ngayketthuc;
	}

}
