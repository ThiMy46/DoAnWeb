package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import DAO.QLLHDAO;
import DB.DBConnection;
import model.QLLHEntry;

/**
 * Servlet implementation class LH_Load1
 */
@WebServlet("/LH_Load1")
public class LH_Load1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LH_Load1() {
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
		int ma = Integer.parseInt(request.getParameter("index"));
		request.setCharacterEncoding("UTF-8");

		QLLHEntry item = QLLHDAO.HienThiMOTGV(conn, ma);

		request.setAttribute("entry", item);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/UpdateLH.jsp");
		rd.forward(request, response);

		
		
	}

}