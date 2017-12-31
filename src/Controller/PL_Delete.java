package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.QLPLDAO;
import DB.DBConnection;
import model.QLPLEntry;

/**
 * Servlet implementation class PL_Delete
 */
@WebServlet("/PL_Delete")
public class PL_Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PL_Delete() {
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
int userid = Integer.parseInt(request.getParameter("index"));
int userid2 = Integer.parseInt(request.getParameter("index2"));



		QLPLDAO.DeleteData( userid2, userid, conn);
		
			
		

		List<QLPLEntry> list = QLPLDAO.HienThiGV(conn);
		
		request.setAttribute("entries", list);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyPhanLop.jsp");
		rd.forward(request, response);

	}

}
