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

import DAO.QLKHDAO;
import DB.DBConnection;
import model.QLKHEntry;

/**
 * Servlet implementation class KH_load
 */
@WebServlet("/KH_load")
public class KH_load extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public KH_load() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {


			Connection conn = (Connection) DBConnection.CreateConnection();
			
			request.setCharacterEncoding("UTF-8");

			List<QLKHEntry> list = QLKHDAO.HienThiGV(conn);

			request.setAttribute("entries", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyKhoaHoc.jsp");
			rd.forward(request, response);

			
			
		}

	}