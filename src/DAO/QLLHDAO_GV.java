package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;


import model.QLLHEntry_GV;

public class QLLHDAO_GV {
public static List<QLLHEntry_GV> HienThiGV(Connection conn) {

		
		List<QLLHEntry_GV> list = new ArrayList<QLLHEntry_GV>();

		String sql = "select MaLopHoc, NgayBatdau, NgayKetThuc, TenKhoaHoc, Phong   from lophoc , khoahoc where lophoc.MaKhoaHoc and khoahoc.MaKhoaHoc  ";

		try {

			PreparedStatement ptmt = (PreparedStatement) conn.prepareCall(sql);
			

			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				QLLHEntry_GV gv = new QLLHEntry_GV();
				
				gv.setId(rs.getInt("MaLopHoc"));
				gv.setNgaybatdau(rs.getDate("NgayBatdau").toString());
				gv.setNgayketthuc(rs.getDate("NgayKetThuc").toString());

				gv.setTenkhoahoc(rs.getString("TenKhoaHoc"));
				gv.setPhong(rs.getString("Phong"));
				
				list.add(gv);
				
			}
		

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

}
