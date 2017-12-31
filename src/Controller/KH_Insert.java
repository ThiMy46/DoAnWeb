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

import DAO.QLKHDAO;
import DB.DBConnection;
import model.QLKHEntry;


@WebServlet("/KH_Insert")
public class KH_Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public KH_Insert() {
        super();
        // TODO Auto-generated constructor stub
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
			
			//LOI
			try {
				flag=QLKHDAO.InsertData( gv, conn);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String MS="Không thêm được";
			if(flag==true)
			{
				MS="Đã Thêm  thành công";
			}
			
			

			List<QLKHEntry> list = QLKHDAO.HienThiGV(conn);

			request.setAttribute("entries", list);
			request.setAttribute("Messe", MS);
			RequestDispatcher rd= request.getRequestDispatcher("/Admin/QuanLyKhoaHoc.jsp");
			rd.forward(request, response);

		}

	}