package DAO;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.QLHVEntry;;

public class DSLHDAO {

	
	
	public static List<QLHVEntry> HienThiHV(Connection conn, int malop) {
		boolean gt=true;

		List<QLHVEntry> list = new ArrayList<QLHVEntry>();

		String sql = "select hocvien.MaHocVien,TenHocVien, NgaySinh, Nu  from hocvien, phanlop where hocvien.MaHocVien = phanlop.MaHocVien and MaLopHoc=?";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			ptmt.setInt(1, malop);

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
				gv.setId(rs.getInt("hocvien.MaHocVien"));
				gv.setTen(rs.getString("TenHocVien"));
				gv.setNgaysinh(rs.getDate("NgaySinh").toString());
			
				
				
				
			
				
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
}