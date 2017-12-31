package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;


import model.TaiKhoaEntry;

public class DangNhapDAO {
	public static List<TaiKhoaEntry> LayTaiKhoan(Connection conn) {


		List<TaiKhoaEntry> list = new ArrayList<TaiKhoaEntry>();

		String sql = "select* from taikhoan";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				TaiKhoaEntry gv = new TaiKhoaEntry();
			
			
				gv.setTK(rs.getString("TenDangNhap"));
				gv.setMK(rs.getString("MatKhau"));
				gv.setIDmem(rs.getInt("IDMember"));
				gv.setQuyen(rs.getInt("PhanQuyen"));
			
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static TaiKhoaEntry  kttk(Connection conn, String taikhoan, String matkhau) {
	

		TaiKhoaEntry gv = new TaiKhoaEntry();

		String sql = "select* from taikhoan where TenDangNhap=? and MatKhau=?";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setString(1, taikhoan);
			ptmt.setString(2, matkhau);

			ResultSet rs = ptmt.executeQuery();
			//int kt= ptmt.executeQuery();
			while (rs.next()) {
				
			
			
				gv.setTK(rs.getString("TenDangNhap"));
				gv.setMK(rs.getString("MatKhau"));
				gv.setIDmem(rs.getInt("IDMember"));
				gv.setQuyen(rs.getInt("PhanQuyen"));
			
			
				
			}
			
//			if (list.isEmpty()) {
//
//				
//				
//			}
//			else
//			{
//				return t = true;
//			}

		} catch (SQLException e) {

			System.out.println(e.getMessage());
		}

		return gv;
	}

}
