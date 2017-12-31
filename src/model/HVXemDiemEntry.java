package model;

public class HVXemDiemEntry {
	private int idHV;
	private int idLop;
	private double diem1;
	private double diem2;
	private double diem3;
	private double diemcuoiky;
	public  HVXemDiemEntry() {};
	public  HVXemDiemEntry(int idHV,	
	 int idLop,
	 String  ngaysinh ,
	 double diem1,
	 double diem2,
	 double diem3,
	 double diemcuoiky ) {
		this.idHV = idHV;
		this.idLop = idLop;
		this.diem1 = diem1;
		this.diem2 = diem2;
		this.diem3=diem3;
		this.diemcuoiky=diemcuoiky;
	}	
	
	public int getIdHV() {
		return idHV;
	}
	public void setIdHV(int idHV) {
		this.idHV = idHV;
	}
	public int getIdLop() {
		return idLop;
	}
	public void setIdLop(int idLop) {
		this.idLop = idLop;
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
	}
	
}
