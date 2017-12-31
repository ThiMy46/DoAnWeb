package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;


import model.QLKHEntry;

public class QLKHDAO {


	public static List<QLKHEntry> HienThiGV(Connection conn) {

		
		List<QLKHEntry> list = new ArrayList<QLKHEntry>();

		String sql = "select* from khoahoc";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QLKHEntry gv = new QLKHEntry();
				
				
				gv.setMakhoahoc(rs.getInt("MaKhoaHoc"));
				
				gv.setTenkhoahoc(rs.getString("TenKhoaHoc"));
				gv.setSotiet(rs.getInt("SoTiet"));
				gv.setHocphi(rs.getInt("HocPhi"));
				
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static QLKHEntry HienThiMOTGV(Connection conn, int ID) {

	
		String sql = "select* from khoahoc where MaKhoaHoc= ?";
		QLKHEntry gv = new QLKHEntry();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, ID);

			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				gv.setMakhoahoc(rs.getInt("MaKhoaHoc"));
				
				gv.setTenkhoahoc(rs.getString("TenKhoaHoc"));
				gv.setSotiet(rs.getInt("SoTiet"));
				gv.setHocphi(rs.getInt("HocPhi"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
	public static boolean UpdateData( QLKHEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE khoahoc set TenKhoaHoc=?, SoTiet=?, HocPhi=? where MaKhoaHoc=?";

		try {

		
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setString(1, q.getTenkhoahoc());
			ptmt.setInt(2, q.getSotiet());
			ptmt.setInt(3, q.getHocphi());
			ptmt.setInt(4, q.getMakhoahoc());
		
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
		

		String sql = "Delete From khoahoc Where MaKhoaHoc =?";

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
	public static boolean InsertData(QLKHEntry q, Connection conn) throws ParseException {

		boolean t = false;

		String sql = "insert into khoahoc (MaKhoaHoc,TenKhoaHoc, SoTiet,HocPhi) values (?, ? ,? , ?) ";

		try {
			
		

	
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setInt(1, q.getMakhoahoc());
			ptmt.setString(2, q.getTenkhoahoc());
			ptmt.setInt(3, q.getSotiet());
			ptmt.setInt(4, q.getHocphi());
			


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
