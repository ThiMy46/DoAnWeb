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

import DAO.QLGVDAO;
import DAO.QLKHDAO;
import DB.DBConnection;
import model.QLGVEntry;
import model.QLKHEntry;

@WebServlet("/KH_Delete")
public class KH_Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public KH_Delete() {
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



			QLKHDAO.DeleteData( userid, conn);
			
				
			

			List<QLKHEntry> list = QLKHDAO.HienThiGV(conn);
			
			request.setAttribute("entries", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyKhoaHoc.jsp");
			rd.forward(request, response);

		}

	}
