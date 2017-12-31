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

import DAO.QLGVDAO;
import DB.DBConnection;
import model.QLGVEntry;

@WebServlet("/GVLoad1")
public class GVLoad1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public GVLoad1() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		Connection conn = (Connection) DBConnection.CreateConnection();
		int ma = Integer.parseInt(request.getParameter("index"));
		request.setCharacterEncoding("UTF-8");

		QLGVEntry item = QLGVDAO.HienThiMOTGV(conn, ma);

		request.setAttribute("entry", item);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/UpdateGV.jsp");
		rd.forward(request, response);

		
		
	}

}