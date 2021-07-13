package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_add")
public class Quiz02Add extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String sitename = request.getParameter("sitename");
		String siteurl = request.getParameter("siteurl");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "insert into `bookmark`"
				+ "(`name`, `url`)"
				+ "values"
				+ "('" + sitename + "', '" + siteurl + "')";
		
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		response.sendRedirect("/lesson04/quiz02/quiz02.jsp");
	}
}
