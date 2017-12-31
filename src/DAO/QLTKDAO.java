package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.QLTKEntry;

public class QLTKDAO {
	

	public static List<QLTKEntry> HienThiGV(Connection conn) {

		
		List<QLTKEntry> list = new ArrayList<QLTKEntry>();

		String sql = "select* from taikhoan";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QLTKEntry gv = new QLTKEntry();
				
				
				gv.setTendangnhap(rs.getString("TenDangNhap"));
				
				gv.setMatkhau(rs.getString("MatKhau"));
				gv.setIdmember(rs.getInt("IDMember"));
				gv.setPhanquyen(rs.getInt("PhanQuyen"));
				
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static QLTKEntry HienThiMOTGV(Connection conn, int ID) {

	
		String sql = "select* from taikhoan where TenDangNhap= ?";
		QLTKEntry gv = new QLTKEntry();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, ID);

			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				gv.setTendangnhap(rs.getString("TenDangNhap"));
				gv.setMatkhau(rs.getString("MatKhau"));
				gv.setIdmember(rs.getInt("IDMember"));
				gv.setPhanquyen(rs.getInt("PhanQuyen"));
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
	public static boolean UpdateData( QLTKEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE taikhoan set MatKhau=?, IDMember=?, PhanQuyen=? where TenDangNhap=?";

		try {

		
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setString(1, q.getMatkhau());
			ptmt.setInt(2, q.getIdmember());
			ptmt.setInt(3, q.getPhanquyen());
			ptmt.setString(4, q.getTendangnhap());
		
			int kt = ptmt.executeUpdate();

			if (kt != 0) {

				// request.setAttribute("message", "Insert data success");
				return t = true;
			}
			ptmt.close();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		return t;

	}
	public static boolean DeleteData( int id, Connection conn) {

		boolean t = false;
		

		String sql = "Delete From taikhoan Where TenDangNhap =?";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setInt(1, id);
		

			int kt = ptmt.executeUpdate();

			if (kt != 0) {

				// request.setAttribute("message", "Insert data success");
				return t = true;
			}
			ptmt.close();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		return t;

	}
	public static boolean InsertData(QLTKEntry q, Connection conn) throws ParseException {

		boolean t = false;

		String sql = "insert into taikhoan (TenDangNhap,MatKhau, IDMember,PhanQuyen) values (?, ? ,? , ?) ";

		try {
			
		

	
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setString(1, q.getTendangnhap());
			ptmt.setString(2, q.getMatkhau());
			ptmt.setInt(3, q.getIdmember());
			ptmt.setInt(4, q.getPhanquyen());
			
			


			int kt = ptmt.executeUpdate();

			if (kt != 0) {

				// request.setAttribute("message", "Insert data success");
				return t = true;
			}
			ptmt.close();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

		return t;

	}

}
