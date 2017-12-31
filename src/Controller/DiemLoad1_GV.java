package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import DAO.QLDiemDAO_GV;
import DAO.QLGVDAO;
import DB.DBConnection;
import model.QLDiemEntry_GV;
import model.QLGVEntry;

/**
 * Servlet implementation class DiemLoad1_GV
 */
@WebServlet("/DiemLoad1_GV")
public class DiemLoad1_GV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DiemLoad1_GV() {
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
			int ma2 = Integer.parseInt(request.getParameter("index2"));
			
			request.setCharacterEncoding("UTF-8");

			QLDiemEntry_GV item = QLDiemDAO_GV.HienThiMOTGV(conn, ma, ma2);
			
			request.setAttribute("entry", item);
			
			RequestDispatcher rd= request.getRequestDispatcher("/GiangVien/UpdateDiem.jsp");
			rd.forward(request, response);

			
			
		}

	}