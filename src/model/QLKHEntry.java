package model;

public class QLKHEntry {
	private int makhoahoc;
	private String tenkhoahoc;
	private int sotiet;
	private int hocphi;
	public QLKHEntry() {}
	public QLKHEntry(Integer makhoahoc ,String tenkhoahoc, Integer sotiet, Integer hocphi) 
	{ 
		this.makhoahoc=makhoahoc;
		this.tenkhoahoc=tenkhoahoc;
		this.sotiet=sotiet;
		this.hocphi=hocphi;
	}
	
	public int getMakhoahoc() {
		return makhoahoc;
	}
	public void setMakhoahoc(int makhoahoc) {
		this.makhoahoc = makhoahoc;
	}
	public String getTenkhoahoc() {
		return tenkhoahoc;
	}
	public void setTenkhoahoc(String tenkhoahoc) {
		this.tenkhoahoc = tenkhoahoc;
	}
	public int getSotiet() {
		return sotiet;
	}
	public void setSotiet(int sotiet) {
		this.sotiet = sotiet;
	}
	public int getHocphi() {
		return hocphi;
	}
	public void setHocphi(int hocphi) {
		this.hocphi = hocphi;
	}

}
