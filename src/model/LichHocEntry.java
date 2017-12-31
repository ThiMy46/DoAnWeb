package model;

public class LichHocEntry {
	private int idKH;
	private int idLH;
	private int idHV;
	private String tenlop;
	private String  buoi ;
	private int phong;
	private String tenGV;
	
	public LichHocEntry(Integer idKH, Integer idLH,Integer idHV, String tenlop, String buoi,  Integer phong, String tenGV) {

		this.idKH = idKH;
		this.idLH = idLH;
		this.idHV = idHV;
		this.tenlop = tenlop;
		this.buoi = buoi;
		this.phong = phong;
		this.tenGV = tenGV;
	}
	
	public LichHocEntry() {}

	public int getIdKH() {
		return idKH;
	}

	public void setIdKH(int idKH) {
		this.idKH = idKH;
	}

	public int getIdLH() {
		return idLH;
	}

	public void setIdLH(int idLH) {
		this.idLH = idLH;
	}

	public int getIdHV() {
		return idHV;
	}

	public void setIdHV(int idHV) {
		this.idHV = idHV;
	}

	public String getTenlop() {
		return tenlop;
	}

	public void setTenlop(String tenlop) {
		this.tenlop = tenlop;
	}

	public String getBuoi() {
		return buoi;
	}

	public void setBuoi(String buoi) {
		this.buoi = buoi;
	}

	public int getPhong() {
		return phong;
	}

	public void setPhong(int phong) {
		this.phong = phong;
	}

	public String getTenGV() {
		return tenGV;
	}

	public void setTenGV(String tenGV) {
		this.tenGV = tenGV;
	}
	
}
