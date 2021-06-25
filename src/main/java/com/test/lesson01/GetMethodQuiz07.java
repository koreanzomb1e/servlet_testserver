package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		String result;
		
		//if (!address.contains("서울시"))
		if (address.contains("서울시") == false) {	// 가독성이 더 좋다
			result = "<b>배달 불가 지역입니다.</b>";
		} else if (card.contains("신한")) {
			result = "<b>결제 불가 카드입니다.</b>";
		} else {
			result = address + " <b>배달 준비중</b>";
		}
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>주문 결과</title></head><body>");
		out.print(result + "<br>");
		out.print("결제금액:" + price + "원");
		out.print("</body></html>");
	}
}