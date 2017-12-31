package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.text.ParseException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.QLPLDAO;
import DB.DBConnection;
import model.QLPLEntry;

/**
 * Servlet implementation class PL_Insert
 */
@WebServlet("/PL_Insert")
public class PL_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PL_Insert() {
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

		boolean flag=false;
		request.setCharacterEncoding("UTF-8");

		Connection conn = (Connection) DBConnection.CreateConnection();
		String vmal = request.getParameter("tgv_malh");
		String vmahv = request.getParameter("tgv_mahv");
		
		
		QLPLEntry gv = new QLPLEntry();
		
		//java.util.Date utilDate = new SimpleDateFormat("dd/MM/yyyy").parse(vnsinh);
		//java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		
		gv.setMahocvien(Integer.parseInt(vmal));
		gv.setMalophoc(Integer.parseInt(vmahv));
	
		//list.add(gv);
		
		//LOI
		try {
			flag=QLPLDAO.InsertData( gv, conn);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String MS="Không thêm được";
		if(flag==true)
		{
			MS="Đã Thêm  thành công";
		}
		
		

		List<QLPLEntry> list = QLPLDAO.HienThiGV(conn);

		request.setAttribute("entries", list);
		request.setAttribute("Messe", MS);
		RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyPhanLop.jsp");
		rd.forward(request, response);

	}

}