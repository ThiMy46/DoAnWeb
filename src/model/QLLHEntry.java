package model;

public class QLLHEntry {
	private int id;
	private String ngaybatdau;
	private String  ngayketthuc ;
	private String  phong ;
	private int magiangvien;
	private int makhoahoc;
	public QLLHEntry() {}
	public QLLHEntry(Integer id, String ngaybatdau,String ngayketthuc,String  phong,Integer magiangvien, Integer makhoahoc ) {
		
		this.id = id;
		this.ngaybatdau = ngaybatdau;
		this.ngayketthuc = ngayketthuc;
		this.phong = phong;
		this.magiangvien = magiangvien;
		this.makhoahoc=makhoahoc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPhong() {
		return phong;
	}
	public void setPhong(String phong) {
		this.phong = phong;
	}
	public int getMagiangvien() {
		return magiangvien;
	}
	public void setMagiangvien(int magiangvien) {
		this.magiangvien = magiangvien;
	}
	public int getMakhoahoc() {
		return makhoahoc;
	}
	public void setMakhoahoc(int makhoahoc) {
		this.makhoahoc = makhoahoc;
	}

}
