package auth.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.dao.UsersDAO;
import auth.dto.UsersDTO;

@WebServlet("*.users")
public class UsersController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String cmd = request.getRequestURI();

		System.out.println("클라이언트 요청: " + cmd);

		// dao 인스턴스 생성
		UsersDAO dao = UsersDAO.getInstance();

		try {
			// 요청은 필요에 따라 추가/삭제
			if (cmd.equals("/add.users")) {

			} else if (cmd.equals("/selectAll.users")) {

			} else if (cmd.equals("/update.users")) {

			} else if (cmd.equals("/delete.users")) {

			} else if (cmd.equals("/mypage.users")) { // 마이페이지
				String id = (String) request.getSession().getAttribute("loginID");
				
				UsersDTO dto = dao.myPage(id);
				request.setAttribute("dto", dto);
				request.getRequestDispatcher("/views/auth/mypage.jsp").forward(request, response);
				
			} else if (cmd.equals("/modify.users")) { // 개인정보수정
				String id = (String) request.getSession().getAttribute("loginID");
				
				UsersDTO dto = dao.modifyPage(id);
				request.setAttribute("dto", dto);
				request.getRequestDispatcher("/views/auth/modify_Inpormation.jsp").forward(request, response);
				
			} else if (cmd.equals("/withdraw.users")) { //회원탈퇴
				String id = (String) request.getSession().getAttribute("loginID");
				int result = dao.withdraw(id);
				
				if (result > 0) {
					System.out.println("탈퇴 성공");
					request.getSession().invalidate();// 세션에서 정보 삭제
					response.sendRedirect("/index.jsp");
				} 
				
			} else if (cmd.equals("/findID.users")) { //아이디 찾기
				String id = request.getParameter("id");
				String email = request.getParameter("email");
				

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}