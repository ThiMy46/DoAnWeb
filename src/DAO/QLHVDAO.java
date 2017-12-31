package DAO;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.QLHVEntry;;

public class QLHVDAO {

	
	
	public static List<QLHVEntry> HienThiHV(Connection conn) {
		boolean gt=true;

		List<QLHVEntry> list = new ArrayList<QLHVEntry>();

		String sql = "select* from hocvien";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QLHVEntry gv = new QLHVEntry();
				gt=rs.getBoolean("Nu");
				if(gt==true)
				{
					gv.setNu("Nữ");
				}
				else
				{
					gv.setNu("Nam");
				}
				gv.setId(rs.getInt("MaHocVien"));
				gv.setTen(rs.getString("TenHocVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());
			
				gv.setSDT(rs.getString("SDT"));
				gv.setDiaChi(rs.getString("DiaChi"));
				
				
			
				
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

	public static QLHVEntry HienThiMOTGV(Connection conn, int ID) {

		boolean gt=true;
	//	QLHVEntry list = new QLHVEntry();

		String sql = "select* from hocvien where MaHocVien= ?";
		QLHVEntry gv = new QLHVEntry();
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
				
				gv.setId(rs.getInt("MaHocVien"));
				gv.setTen(rs.getString("TenHocVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());
			
				gv.setSDT(rs.getString("SDT"));
				gv.setDiaChi(rs.getString("DiaChi"));
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
	public static boolean UpdateData( QLHVEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE hocvien set TenHocVien=?, NgaySinh=?, Nu=?, SDT=?, "
				+ "DiaChi=? where MaHocVien=?";

		try {

			String ngaysinh = q.getNgaysinh().toString();
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
			java.util.Date startDate =  sdf.parse(ngaysinh);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
		
			

			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setString(1, q.getTen());
			ptmt.setDate(2, sqlDate);
			ptmt.setBoolean(3,Boolean.parseBoolean( q.getNu()));
			ptmt.setString(4, q.getSDT());
			ptmt.setString(5, q.getDiaChi());
			
			
			
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
		

		String sql = "Delete From hocvien Where MaHocVien =?";

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
	public static boolean InsertData(QLHVEntry q, Connection conn) throws ParseException {

		boolean t = false;

		String sql = "insert into hocvien (MaHocVien,TenHocVien, NgaySinh,Nu, SDT, DiaChi ) values (?, ? ,? , ?, ?, ?) ";

		try {
			
			String ngaysinh = q.getNgaysinh().toString();
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
			java.util.Date startDate =  sdf.parse(ngaysinh);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
		
			

	
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setInt(1, q.getId());
			ptmt.setString(2, q.getTen());
			ptmt.setDate(3, sqlDate);
			ptmt.setBoolean(4,Boolean.parseBoolean( q.getNu()));
			ptmt.setString(5, q.getSDT());
			ptmt.setString(6, q.getDiaChi());
			

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

