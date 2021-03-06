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
import DB.DBConnection;
import model.QLGVEntry;


@WebServlet("/GV_Delete")
public class GV_Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public GV_Delete() {
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
int userid = Integer.parseInt(request.getParameter("index"));



		QLGVDAO.DeleteData( userid, conn);
		
			
		

		List<QLGVEntry> list = QLGVDAO.HienThiGV(conn);
		
		request.setAttribute("entries", list);
		
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyGiangVien.jsp");
		rd.forward(request, response);

	}

}
