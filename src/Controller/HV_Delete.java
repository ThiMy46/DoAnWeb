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

import DAO.QLHVDAO;
import DB.DBConnection;
import model.QLHVEntry;

/**
 * Servlet implementation class HV_Delete
 */
@WebServlet("/HV_Delete")
public class HV_Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HV_Delete() {
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



			QLHVDAO.DeleteData( userid, conn);
			
				
			

			List<QLHVEntry> list = QLHVDAO.HienThiHV(conn);
			
			request.setAttribute("entries", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyHocVien.jsp");
			rd.forward(request, response);

		}

	}
