package model;

public class QLPLEntry {
	private int mahocvien;
	private int  malophoc ;
	public QLPLEntry() {}
	public QLPLEntry(Integer mahocvien, Integer malophoc ) {
		
		this.mahocvien = mahocvien;
		this.malophoc = malophoc;
		
	}
	public int getMahocvien() {
		return mahocvien;
	}
	public void setMahocvien(int mahocvien) {
		this.mahocvien = mahocvien;
	}
	public int getMalophoc() {
		return malophoc;
	}
	public void setMalophoc(int malophoc) {
		this.malophoc = malophoc;
	}

}
