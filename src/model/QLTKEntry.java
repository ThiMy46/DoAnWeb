package model;

public class QLTKEntry {
	private String tendangnhap;
	private String matkhau;
	private int idmember;
	private int phanquyen;
	public QLTKEntry() {}
	public QLTKEntry(String tendangnhap ,String matkhau, Integer idmember, Integer phanquyen) 
	{ 
		this.tendangnhap=tendangnhap;
		this.matkhau=matkhau;
		this.idmember=idmember;
		this.phanquyen=phanquyen;
	}
	public String getTendangnhap() {
		return tendangnhap;
	}
	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public int getIdmember() {
		return idmember;
	}
	public void setIdmember(int idmember) {
		this.idmember = idmember;
	}
	public int getPhanquyen() {
		return phanquyen;
	}
	public void setPhanquyen(int phanquyen) {
		this.phanquyen = phanquyen;
	}

}
