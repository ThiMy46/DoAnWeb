package model;


public class QLDiemEntry_GV {
	private int  id;
	private int  malop;
	public int getMalop() {
		return malop;
	}
	public void setMalop(int malop) {
		this.malop = malop;
	}
	private String ten;
	private String  ngaysinh ;
	private double diem1;
	private double diem2;
	private double diem3;
	private double diemcuoiky;
	public  QLDiemEntry_GV() {};
	public  QLDiemEntry_GV(int id,int  malop,
	
	 String ten,
	 String  ngaysinh ,
	 double diem1,
	 double diem2,
	 double diem3,
	 double diemcuoiky ) {
		this.id = id;
		this.malop=malop;
		this.ten = ten;
		this.ngaysinh = ngaysinh;
		this.diem1 = diem1;
		this.diem2 = diem2;
		this.diem3=diem3;
		this.diemcuoiky=diemcuoiky;
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
	public String getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public double getDiem1() {
		return diem1;
	}
	public void setDiem1(double diem1) {
		this.diem1 = diem1;
	}
	public double getDiem2() {
		return diem2;
	}
	public void setDiem2(double diem2) {
		this.diem2 = diem2;
	}
	public double getDiem3() {
		return diem3;
	}
	public void setDiem3(double diem3) {
		this.diem3 = diem3;
	}
	public double getDiemcuoiky() {
		return diemcuoiky;
	}
	public void setDiemcuoiky(double diemcuoiky) {
		this.diemcuoiky = diemcuoiky;
	};

}
