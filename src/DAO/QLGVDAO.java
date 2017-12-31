package DAO;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;
import model.QLGVEntry;;

public class QLGVDAO {

	
	
	public static List<QLGVEntry> HienThiGV(Connection conn) {

		boolean gt=true;
		List<QLGVEntry> list = new ArrayList<QLGVEntry>();

		String sql = "select* from giangvien";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QLGVEntry gv = new QLGVEntry();
				gt=rs.getBoolean("Nu");
				if(gt==true)
				{
					gv.setNu("Nữ");
				}
				else
				{
					gv.setNu("Nam");
				}
				gv.setId(rs.getInt("MaGiangVien"));
				gv.setTen(rs.getString("TenGiangVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());
				gv.setDiaChi(rs.getString("DiaChi"));
				gv.setSDT(rs.getString("SDT"));
				//gv.setNu(rs.getString("Nu"));
				gv.setTrinhdo(rs.getString("TrinhDo"));
				gv.setChuyenmon(rs.getString("ChuyenMon"));
				
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	public static QLGVEntry HienThiMOTGV(Connection conn, int ID) {

		boolean gt=true;
	//	QLGVEntry list = new QLGVEntry();

		String sql = "select* from giangvien where MaGiangVien= ?";
		QLGVEntry gv = new QLGVEntry();
		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, ID);

			ResultSet rs = ptmt.executeQuery();
			while (rs.next()) {
				gt=rs.getBoolean("Nu");
				if(gt==true)
				{
					gv.setNu("checked");
				}
				else
				{
					gv.setNu("");
				}
				
				gv.setId(rs.getInt("MaGiangVien"));
				gv.setTen(rs.getString("TenGiangVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());
				gv.setDiaChi(rs.getString("DiaChi"));
				gv.setSDT(rs.getString("SDT"));
				//gv.setNu(rs.getString("Nu"));
				gv.setTrinhdo(rs.getString("TrinhDo"));
				gv.setChuyenmon(rs.getString("ChuyenMon"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
	public static boolean UpdateData( QLGVEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE giangvien set TenGiangVien=?, NgaySinh=?, DiaChi=?, SDT=?, "
				+ "Nu=?, TrinhDo=?, ChuyenMon=? where MaGiangVien=?";

		try {

			String ngaysinh = q.getNgaysinh().toString();
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
			java.util.Date startDate =  sdf.parse(ngaysinh);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
		
			

			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setString(1, q.getTen());
			ptmt.setDate(2, sqlDate);
			ptmt.setString(3, q.getDiaChi());
			ptmt.setString(4, q.getSDT());
			ptmt.setBoolean(5,Boolean.parseBoolean( q.getNu()));
			ptmt.setString(6, q.getTrinhdo());
			ptmt.setString(7, q.getChuyenmon());
			ptmt.setInt(8, q.getId());
			
		
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
		

		String sql = "Delete From giangvien Where MaGiangVien =?";

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
	public static boolean InsertData(QLGVEntry q, Connection conn) throws ParseException {

		boolean t = false;

		String sql = "insert into giangvien (MaGiangVien,TenGiangVien, NgaySinh,DiaChi, SDT, Nu, TrinhDo, ChuyenMon ) values (?, ? ,? , ?, ?, ?, ?, ?) ";

		try {
			
			String ngaysinh = q.getNgaysinh().toString();
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
			java.util.Date startDate =  sdf.parse(ngaysinh);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
		
			

	
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setInt(1, q.getId());
			ptmt.setString(2, q.getTen());
			ptmt.setDate(3, sqlDate);
			ptmt.setString(4, q.getDiaChi());
			ptmt.setString(5, q.getSDT());
			ptmt.setBoolean(6,Boolean.parseBoolean( q.getNu()));
			ptmt.setString(7, q.getTrinhdo());
			ptmt.setString(8, q.getChuyenmon());


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
