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

import model.QLLHEntry;

public class QLLHDAO {
	public static List<QLLHEntry> HienThiGV(Connection conn) {

		
		List<QLLHEntry> list = new ArrayList<QLLHEntry>();

		String sql = "select* from lophoc";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QLLHEntry gv = new QLLHEntry();
				
				gv.setId(rs.getInt("MaLopHoc"));
				gv.setNgaybatdau(rs.getDate("NgayBatdau").toString());
				gv.setNgayketthuc(rs.getDate("NgayKetThuc").toString());

				gv.setPhong(rs.getString("Phong"));
				gv.setMagiangvien(rs.getInt("MaGiangVien"));
				gv.setMakhoahoc(rs.getInt("MaKhoaHoc"));
				
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static QLLHEntry HienThiMOTGV(Connection conn, int ID) {



		String sql = "select* from lophoc where MaLopHoc= ?";
		QLLHEntry gv = new QLLHEntry();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, ID);

			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				
				
				gv.setId(rs.getInt("MaLopHoc"));
				gv.setNgaybatdau(rs.getDate("NgayBatdau").toString());
				gv.setNgayketthuc(rs.getDate("NgayKetThuc").toString());

				gv.setPhong(rs.getString("Phong"));
				gv.setMagiangvien(rs.getInt("MaGiangVien"));
				gv.setMakhoahoc(rs.getInt("MaKhoaHoc"));
				
			
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
	public static boolean UpdateData( QLLHEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE lophoc set NgayBatDau=?, NgayKetThuc=?, Phong=?, "
				+ "MaGiangVien=?, MaKhoaHoc=? where MaLopHoc=?";

		try {

			String ngaybatdau = q.getNgaybatdau().toString();
			String ngayketthuc = q.getNgayketthuc().toString();
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
			java.util.Date startDate1 =  sdf.parse(ngaybatdau);
			java.sql.Date sqlDate1 = new java.sql.Date(startDate1.getTime());		
		
			java.util.Date startDate2 =  sdf.parse(ngayketthuc);
			java.sql.Date sqlDate2 = new java.sql.Date(startDate2.getTime());

			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setDate(1,sqlDate1);
			ptmt.setDate(2, sqlDate2);
			ptmt.setString(3, q.getPhong());
			ptmt.setInt(4, q.getMagiangvien());
			ptmt.setInt(5, q.getMakhoahoc());
			
			ptmt.setInt(6, q.getId());
			
		
			int kt = ptmt.executeUpdate();

			if (kt != 0) {

				// request.setAttribute("message", "Insert data success");
				return t = true;
			}
			ptmt.close();

		} catch (SQLException | ParseException e) {
			System.out.println(e.getMessage());
		}

		return t;

	}
	public static boolean DeleteData( int id, Connection conn) {

		boolean t = false;
		

		String sql = "Delete From lophoc Where MaLopHoc =?";

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
	public static boolean InsertData(QLLHEntry q, Connection conn) throws ParseException {

		boolean t = false;

		String sql = "insert into lophoc (MaLopHoc,NgayBatDau, NgayKetThuc,Phong, MaGiangVien, MaKhoaHoc ) values (?, ? ,? , ?, ?, ?) ";

		try {
			
			String ngaybatdau = q.getNgaybatdau().toString();
			String ngayketthuc = q.getNgayketthuc().toString();
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
			java.util.Date startDate1 =  sdf.parse(ngaybatdau);
			java.sql.Date sqlDate1 = new java.sql.Date(startDate1.getTime());		
		
			java.util.Date startDate2 =  sdf.parse(ngayketthuc);
			java.sql.Date sqlDate2 = new java.sql.Date(startDate2.getTime());

			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setInt(1, q.getId());
			ptmt.setDate(2,sqlDate1);
			ptmt.setDate(3, sqlDate2);
			ptmt.setString(4, q.getPhong());
			ptmt.setInt(5, q.getMagiangvien());
			ptmt.setInt(6, q.getMakhoahoc());
			
			


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
