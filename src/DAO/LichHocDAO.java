package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.LichHocEntry;

public class LichHocDAO {
	public static List<LichHocEntry> HienThiHV(Connection conn) {

		List<LichHocEntry> list = new ArrayList<LichHocEntry>();
		String sql = "select* from lichhoc";
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);			
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				LichHocEntry gv = new LichHocEntry();			
				
				gv.setIdKH(rs.getInt("MaKhoaHoc"));
				gv.setIdLH(rs.getInt("MaLopHoc"));
				gv.setIdHV(rs.getInt("MaHocVien"));
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

	public static LichHocEntry HienThiMOTGV(Connection conn, int ID, int id1,int id2) {

	//	LichHocEntry list = new LichHocEntry();
		String sql = "select* from phanlop where MaHocVien= ? and MaLopHoc=? and MaHocVien=?";
		LichHocEntry gv = new LichHocEntry();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, ID);
			ptmt.setInt(2, id1);
			ptmt.setInt(3, id2);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				
				gv.setIdKH(rs.getInt("MaKhoaHoc"));
				gv.setIdLH(rs.getInt("MaLopHoc"));
				gv.setIdHV(rs.getInt("MaHocVien"));
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
	
	public static boolean UpdateData( LichHocEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE lichhoc set TenLopHoc=?, BuoiHoc=?, Phong=?, TenGiangVien=? where MaKhoaHoc=? and MaLopHoc=? and MaHocVien=?";

		try {
		
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			
			ptmt.setString(1, q.getTenlop());
			ptmt.setString(2, q.getBuoi());
			ptmt.setInt(3, q.getPhong());
			ptmt.setString(4,q.getTenGV());	
			ptmt.setInt(5, q.getIdKH());
			ptmt.setInt(6, q.getIdLH());
			ptmt.setInt(7, q.getIdHV());
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
