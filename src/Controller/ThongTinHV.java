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

import DAO.ThongTinHVDAO;
import DB.DBConnection;
import model.ThongTinHVEntry;


@WebServlet("/ThongTinHV")
public class ThongTinHV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThongTinHV() {
        super();
 
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = (Connection) DBConnection.CreateConnection();
		
		request.setCharacterEncoding("UTF-8");

		List<ThongTinHVEntry> item = ThongTinHVDAO.HienThiHV(conn);

		request.setAttribute("entries", item);
		
		RequestDispatcher rd= request.getRequestDispatcher("/HocVien/ThongTinHV.jsp");
		rd.forward(request, response);
		
	}

}
