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

import model.ThongTinHVEntry;

public class ThongTinHVDAO {
	public static List<ThongTinHVEntry> HienThiHV(Connection conn) {
		boolean gt=true;

		List<ThongTinHVEntry> list = new ArrayList<ThongTinHVEntry>();

		String sql = "select* from hocvien";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				ThongTinHVEntry gv = new ThongTinHVEntry();
				gt=rs.getBoolean("Nu");
				if(gt==true)
				{
					gv.setNu("Nữ");
				}
				else
				{
					gv.setNu("Nam");
				}
				gv.setIdHV(rs.getInt("MaHocVien"));
				gv.setTenHV(rs.getString("TenHocVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());			
				gv.setSDT(rs.getString("SDT"));
				gv.setDiachi(rs.getString("DiaChi"));
				
				list.add(gv);
				
			}	

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

	public static ThongTinHVEntry HienThiMOTGV(Connection conn, int ID) {

		boolean gt=true;
	//	ThongTinHVEntry list = new ThongTinHVEntry();

		String sql = "select* from hocvien where MaHocVien= ?";
		ThongTinHVEntry gv = new ThongTinHVEntry();
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
				
				gv.setIdHV(rs.getInt("MaHocVien"));
				gv.setTenHV(rs.getString("TenHocVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());			
				gv.setSDT(rs.getString("SDT"));
				gv.setDiachi(rs.getString("DiaChi"));
				
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return gv;
	}
	public static boolean UpdateData( ThongTinHVEntry q, Connection conn) {

		boolean t = false;

		String sql = "UPDATE hocvien set TenHocVien=?, NgaySinh=?, Nu=?, SDT=?, "
				+ "DiaChi=? where MaHocVien=?";

		try {

			String ngaysinh = q.getNgaysinh().toString();
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
			java.util.Date startDate =  sdf.parse(ngaysinh);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		

			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ptmt.setString(1, q.getTenHV());
			ptmt.setDate(2, sqlDate);
			ptmt.setBoolean(3,Boolean.parseBoolean( q.getNu()));
			ptmt.setString(4, q.getSDT());
			ptmt.setString(5, q.getDiachi());		
			ptmt.setInt(6, q.getIdHV());			
		
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
}
