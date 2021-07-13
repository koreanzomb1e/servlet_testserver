package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01")
public class DatabaseConnectQuiz01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		try {
			// add
			String addQuery = "insert into `real_estate`"
					+ "(`realtorId`, `address`, `area`, `type`, `price`)"
					+ "values"
					+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000)";
			mysqlService.update(addQuery);
			
			// select
			String selectQuery = "select * from `real_estate`"
					+ "order by `id` desc"
					+ "limit 10";
			
			ResultSet resultSet = mysqlService.select(selectQuery);
			PrintWriter out = response.getWriter();
			while (resultSet.next()) {
				out.print("매물 주소: " + resultSet.getString("address"));
				out.print(", 면적: " + resultSet.getInt("area"));
				out.print(", 타입: " + resultSet.getString("type") + "\n");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
	}
}
