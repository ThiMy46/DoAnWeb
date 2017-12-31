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

import DAO.DangNhapDAO;
import DAO.QLGVDAO;
import DB.DBConnection;
import model.QLGVEntry;
import model.TaiKhoaEntry;

/**
 * Servlet implementation class DangNhap
 */
@WebServlet("/DangNhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DangNhap() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = request.getParameter("user");
		String password = request.getParameter("pass");

		Connection conn = (Connection) DBConnection.CreateConnection();
		
		request.setCharacterEncoding("UTF-8");

		TaiKhoaEntry item  = DangNhapDAO.kttk(conn, user, password);
		if(item.getQuyen()==1)
		{
			request.setAttribute("Tai_Khoan", item);
			RequestDispatcher rd= request.getRequestDispatcher("QlGiangVien");
			rd.forward(request, response);
		}
		if(item.getQuyen()==2)
		{
			request.setAttribute("Tai_Khoan", item);
			RequestDispatcher rd= request.getRequestDispatcher("LHLoad_GV");
			rd.forward(request, response);
		}
		if(item.getQuyen()==3)
		{
			request.setAttribute("Tai_Khoan", item);
			RequestDispatcher rd= request.getRequestDispatcher("LichHocHV");
			rd.forward(request, response);
		}

		
		//request.setAttribute("entries", list);
		
	RequestDispatcher rd= request.getRequestDispatcher("/TrangChu.jsp");
		//RequestDispatcher rd= request.getRequestDispatcher("QlGiangVien");
		rd.forward(request, response);


		
		
	}

}