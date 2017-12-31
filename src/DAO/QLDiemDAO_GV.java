package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.QLDiemEntry_GV;
import model.QLGVEntry;

public class QLDiemDAO_GV {
	public static List<QLDiemEntry_GV> HienThiHV(Connection conn, int malop) {
	

		List<QLDiemEntry_GV> list = new ArrayList<QLDiemEntry_GV>();

		String sql = "select MaLopHoc, hocvien.MaHocVien,TenHocVien, NgaySinh,Diem1, Diem2, Diem3, DiemCuoiKy  from hocvien , diem   where  hocvien.MaHocVien=diem.MaHocVien and  MaLopHoc=?";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, malop);

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QLDiemEntry_GV gv = new QLDiemEntry_GV();
			
				gv.setId(rs.getInt("hocvien.MaHocVien"));
				gv.setMalop(rs.getInt("MaLopHoc"));
				gv.setTen(rs.getString("TenHocVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());
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
	public static QLDiemEntry_GV HienThiMOTGV(Connection conn, int ID, int malh) {

		boolean gt=true;
	//	QLGVEntry list = new QLGVEntry();

		String sql = "select MaLopHoc, hocvien.MaHocVien,TenHocVien, NgaySinh,Diem1, Diem2, Diem3, DiemCuoiKy  from hocvien , diem   where  hocvien.MaHocVien=diem.MaHocVien and  MaLopHoc=? and diem.MaHocVien=?";
		QLDiemEntry_GV gv = new QLDiemEntry_GV();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, malh);
			ptmt.setInt(2, ID);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				gv.setId(rs.getInt("hocvien.MaHocVien"));
				gv.setMalop(rs.getInt("MaLopHoc"));
				gv.setTen(rs.getString("TenHocVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());
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
	
	public static boolean UpdateData( QLDiemEntry_GV q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE diem set Diem1=?, Diem2=?, Diem3=?, DiemCuoiKy=? "
				+ "where MaHocVien=? and MaLopHoc=?";

		try {

			

			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setDouble(1, q.getDiem1());
		
			ptmt.setDouble(2, q.getDiem2());
			ptmt.setDouble(3, q.getDiem3());
			
			ptmt.setDouble(4, q.getDiemcuoiky());
			
			ptmt.setInt(5, q.getId());
			ptmt.setInt(6, q.getMalop());
			
		
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
