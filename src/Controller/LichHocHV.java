package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import DAO.LichHocDAO;
import DB.DBConnection;
import model.LichHocEntry;

@WebServlet("/LichHocHV")
public class LichHocHV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LichHocHV() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		
		request.setCharacterEncoding("UTF-8");

		List<LichHocEntry> list = LichHocDAO.HienThiHV(conn);

		request.setAttribute("entries", list);
		
		RequestDispatcher rd= request.getRequestDispatcher("/HocVien/LichHocHV.jsp");
		rd.forward(request, response);
	}

}
