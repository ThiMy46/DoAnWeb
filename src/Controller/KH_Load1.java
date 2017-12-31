package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import DAO.QLGVDAO;
import DAO.QLKHDAO;
import DB.DBConnection;
import model.QLGVEntry;
import model.QLKHEntry;

/**
 * Servlet implementation class KH_Load1
 */
@WebServlet("/KH_Load1")
public class KH_Load1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public KH_Load1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		Connection conn = (Connection) DBConnection.CreateConnection();
		int ma = Integer.parseInt(request.getParameter("index"));
		request.setCharacterEncoding("UTF-8");

		QLKHEntry item = QLKHDAO.HienThiMOTGV(conn, ma);

		request.setAttribute("entry", item);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/UpdateKH.jsp");
		rd.forward(request, response);

		
		
	}

}