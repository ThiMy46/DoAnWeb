package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.HVXemDiemEntry;

public class HVXemDiemDAO {
	public static List<HVXemDiemEntry> HienThiHV(Connection conn) {

		List<HVXemDiemEntry> list = new ArrayList<HVXemDiemEntry>();
		String sql = "select* from diem";
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);			
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				HVXemDiemEntry gv = new HVXemDiemEntry();			
				
				gv.setIdHV(rs.getInt("MaHocVien"));
				gv.setIdLop(rs.getInt("MaLopHoc"));	
				gv.setDiem1(rs.getDouble("Diem1"));
				gv.setDiem2(rs.getDouble("Diem2"));
				gv.setDiem3(rs.getDouble("Diem3"));
				gv.setDiemcuoiky(rs.getDouble("DiemCuoiKy"));
				
				list.add(gv);
				
			}
		
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

	public static HVXemDiemEntry HienThiMOTGV(Connection conn, int ID, int id2) {

	//	HVXemDiemEntry list = new HVXemDiemEntry();
		String sql = "select* from diem where MaHocVien= ? and MaLopHoc=?";
		HVXemDiemEntry gv = new HVXemDiemEntry();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, ID);
			ptmt.setInt(2, id2);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				
				gv.setIdHV(rs.getInt("MaHocVien"));
				gv.setIdLop(rs.getInt("MaLopHoc"));	
				gv.setDiem1(rs.getDouble("Diem1"));
				gv.setDiem2(rs.getDouble("Diem2"));
				gv.setDiem3(rs.getDouble("Diem3"));
				gv.setDiemcuoiky(rs.getDouble("DiemCuoiKy"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
		
}
