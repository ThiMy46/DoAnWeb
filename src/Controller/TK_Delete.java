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

import DAO.QLTKDAO;
import DB.DBConnection;
import model.QLTKEntry;

/**
 * Servlet implementation class TK_Delete
 */
@WebServlet("/TK_Delete")
public class TK_Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TK_Delete() {
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



			QLTKDAO.DeleteData( userid, conn);
			
				
			

			List<QLTKEntry> list = QLTKDAO.HienThiGV(conn);
			
			request.setAttribute("entries", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyTaiKhoan.jsp");
			rd.forward(request, response);

		}

	}
