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

import DAO.QLLHDAO;
import DB.DBConnection;
import model.QLLHEntry;

/**
 * Servlet implementation class LH_Load
 */
@WebServlet("/LH_Load")
public class LH_Load extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LH_Load() {
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
			
			request.setCharacterEncoding("UTF-8");

			List<QLLHEntry> list = QLLHDAO.HienThiGV(conn);

			request.setAttribute("entries", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyLopHoc.jsp");
			rd.forward(request, response);

			
			
		}

	}