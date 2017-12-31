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

import DAO.QLLHDAO;
import DB.DBConnection;
import model.QLLHEntry;

/**
 * Servlet implementation class LH_Delete
 */
@WebServlet("/LH_Delete")
public class LH_Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LH_Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

Connection conn = (Connection) DBConnection.CreateConnection();
int userid = Integer.parseInt(request.getParameter("index"));



		QLLHDAO.DeleteData( userid, conn);
		
			
		

		List<QLLHEntry> list = QLLHDAO.HienThiGV(conn);
		
		request.setAttribute("entries", list);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyLopHoc.jsp");
		rd.forward(request, response);

	}

}
