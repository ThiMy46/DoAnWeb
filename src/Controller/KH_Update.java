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

import DAO.QLKHDAO;
import DB.DBConnection;

import model.QLKHEntry;


@WebServlet("/KH_Update")
public class KH_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public KH_Update() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			boolean flag=false;
			request.setCharacterEncoding("UTF-8");

			Connection conn = (Connection) DBConnection.CreateConnection();
			
			String vma = request.getParameter("tgv_ma");
			String vten = request.getParameter("tgv_ten");
			String vsotiet = request.getParameter("tgv_sotiet");
			String vhocphi = request.getParameter("tgv_hocphi");
			

			QLKHEntry gv = new QLKHEntry();
			
			
			gv.setMakhoahoc(Integer.parseInt(vma));
			gv.setTenkhoahoc(vten);
			gv.setSotiet(Integer.parseInt(vsotiet));
			gv.setHocphi(Integer.parseInt(vhocphi));
			
			
			//list.add(gv);
			
			flag=QLKHDAO.UpdateData( gv, conn);
			
				
			

			List<QLKHEntry> list = QLKHDAO.HienThiGV(conn);

			request.setAttribute("entries", list);
			
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyKhoaHoc.jsp");
			rd.forward(request, response);

		}

	}