package model;

public class TaiKhoaEntry {


	
	private String TK;
	private String  MK ;

	private int IDmem;
	private int Quyen;


	
	public TaiKhoaEntry( String TK,String MK,  Integer IDmem, Integer quyen) {
		this.TK=TK;
		this.MK=MK;
		this.IDmem=IDmem;
		this.Quyen=quyen;

	}


	public TaiKhoaEntry() {
		// TODO Auto-generated constructor stub
	}


	public String getTK() {
		return TK;
	}



	public void setTK(String tK) {
		TK = tK;
	}


	public String getMK() {
		return MK;
	}


	public void setMK(String mK) {
		MK = mK;
	}


	public int getIDmem() {
		return IDmem;
	}


	public void setIDmem(int iDmem) {
		IDmem = iDmem;
	}


	public int getQuyen() {
		return Quyen;
	}

	public void setQuyen(int quyen) {
		Quyen = quyen;
	}
}
