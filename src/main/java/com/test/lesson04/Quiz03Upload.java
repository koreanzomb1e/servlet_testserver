package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_upload")
public class Quiz03Upload extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Integer sellerId = Integer.parseInt(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		Integer price = Integer.parseInt(request.getParameter("price"));
		String description = request.getParameter("description");
		String image = request.getParameter("image");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "insert into used_goods"
				+ "(sellerId, title, price, description, image)"
				+ "values"
				+ "(" + sellerId + ", '" + title + "'," + price + ", '" + description + "', '" + image + "')";
		
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		response.sendRedirect("/lesson04/quiz03/list_template.jsp");
	}

}
