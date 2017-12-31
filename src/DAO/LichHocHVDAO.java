package DAO;

import java.sql.*;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.PreparedStatement;
import model.LichHocHVEntry;
import model.QLPLEntry;

public class LichHocHVDAO {
	
	public static List<LichHocHVEntry> HienThiHV(Connection conn) {

		List<LichHocHVEntry> list = new ArrayList<LichHocHVEntry>();
		String sql = "select* from lichhoc";
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);			
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				LichHocHVEntry gv = new LichHocHVEntry();			
				
				gv.setIdKH(rs.getInt("MaKhoaHoc"));
				gv.setIdLH(rs.getInt("MaLopHoc"));
				gv.setTenlop(rs.getString("TenLopHoc"));
				gv.setBuoi(rs.getString("BuoiHoc"));	
				gv.setPhong(rs.getInt("Phong"));
				gv.setTenGV(rs.getString("TenGiangVien"));
				
				list.add(gv);
				
			}
		
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

	public static LichHocHVEntry HienThiMOTGV(Connection conn, int ID, int id2) {

	//	LichHocHVEntry list = new LichHocHVEntry();
		String sql = "select* from phanlop where MaHocVien= ? and MaLopHoc=?";
		LichHocHVEntry gv = new LichHocHVEntry();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, ID);
			ptmt.setInt(2, id2);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				
				gv.setIdKH(rs.getInt("MaKhoaHoc"));
				gv.setIdLH(rs.getInt("MaLopHoc"));
				gv.setTenlop(rs.getString("TenLopHoc"));
				gv.setBuoi(rs.getString("BuoiHoc"));	
				gv.setPhong(rs.getInt("Phong"));
				gv.setTenGV(rs.getString("TenGiangVien"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
	
	public static boolean UpdateData( LichHocHVEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE lichhoc set TenLopHoc=?, BuoiHoc=?, Phong=?, TenGiangVien=? where MaKhoaHoc=? and MaLopHoc=?";

		try {
		
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			
			ptmt.setString(1, q.getTenlop());
			ptmt.setString(2, q.getBuoi());
			ptmt.setInt(3, q.getPhong());
			ptmt.setString(4,q.getTenGV());	
			ptmt.setInt(5, q.getIdKH());
			ptmt.setInt(6, q.getIdLH());
			
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
