package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.QLPLEntry;

public class QLPLDAO {
	public static List<QLPLEntry> HienThiGV(Connection conn) {

		
		List<QLPLEntry> list = new ArrayList<QLPLEntry>();

		String sql = "select* from phanlop";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QLPLEntry gv = new QLPLEntry();
				
				
				gv.setMahocvien(rs.getInt("MaHocVien"));
				
				gv.setMalophoc(rs.getInt("MaLopHoc"));
			
				
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static QLPLEntry HienThiMOTGV(Connection conn, int ID, int id2) {

	
		String sql = "select* from phanlop where MaHocVien= ? and MaLopHoc=?";
		QLPLEntry gv = new QLPLEntry();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, ID);
			ptmt.setInt(2, id2);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				gv.setMahocvien(rs.getInt("MaHocVien"));
				
				gv.setMalophoc(rs.getInt("MaLopHoc"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
	public static boolean UpdateData( QLPLEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE phanlop set MaHocVien=?, MaLopHoc=? where MaHocVien=? and MaLopHoc=?";

		try {

		
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			
			ptmt.setInt(1, q.getMahocvien());
			ptmt.setInt(2, q.getMalophoc());
			ptmt.setInt(3, q.getMahocvien());
			ptmt.setInt(4, q.getMalophoc());
		
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
	public static boolean DeleteData( int id1, int id2, Connection conn) {

		boolean t = false;
		

		String sql = "Delete From phanlop where MaHocVien=? and MaLopHoc=?";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setInt(1, id1);
			ptmt.setInt(2, id2);
			

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
	public static boolean InsertData(QLPLEntry q, Connection conn) throws ParseException {

		boolean t = false;

		String sql = "insert into phanlop (MaLopHoc,MaHocVien) values (?, ? ) ";

		try {
			
		

	
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setInt(1, q.getMahocvien());
			ptmt.setInt(2, q.getMalophoc());
			


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
