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

import DAO.DSLHDAO;
import DB.DBConnection;
import model.QLHVEntry;

/**
 * Servlet implementation class DSHocVien_GV
 */
@WebServlet("/DSHocVien_GV")
public class DSHocVien_GV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DSHocVien_GV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		Connection conn = (Connection) DBConnection.CreateConnection();
		int malop = Integer.parseInt(request.getParameter("index"));
		
		request.setCharacterEncoding("UTF-8");

		List<QLHVEntry> item = DSLHDAO.HienThiHV(conn, malop);

		request.setAttribute("entries", item);
		
		RequestDispatcher rd= request.getRequestDispatcher("/GiangVien/DSHocVien.jsp");
		rd.forward(request, response);

		
		
	}

}