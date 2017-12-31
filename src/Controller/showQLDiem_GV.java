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

import DAO.QLLHDAO_GV;
import DB.DBConnection;
import model.QLLHEntry_GV;


@WebServlet("/showQLDiem_GV")
public class showQLDiem_GV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public showQLDiem_GV() {
        super();
  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		Connection conn = (Connection) DBConnection.CreateConnection();
		
		request.setCharacterEncoding("UTF-8");

		List<QLLHEntry_GV> list = QLLHDAO_GV.HienThiGV(conn);

		request.setAttribute("entries", list);
		
		RequestDispatcher rd= request.getRequestDispatcher("/GiangVien/QuanLyDiem.jsp");
		rd.forward(request, response);
	
	}

}