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

import DAO.QLDiemDAO_GV;
import DAO.QLGVDAO;
import DB.DBConnection;
import model.QLDiemEntry_GV;


@WebServlet("/LoadDiem_GV")
public class LoadDiem_GV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoadDiem_GV() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {


			Connection conn = (Connection) DBConnection.CreateConnection();
			int ma = Integer.parseInt(request.getParameter("index"));
			request.setCharacterEncoding("UTF-8");

			List<QLDiemEntry_GV> item = QLDiemDAO_GV.HienThiHV(conn, ma);

			request.setAttribute("entries", item);
			
			RequestDispatcher rd= request.getRequestDispatcher("/GiangVien/HienThiDiem.jsp");
			rd.forward(request, response);
		
		}

	}