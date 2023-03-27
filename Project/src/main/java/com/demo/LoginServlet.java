package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.airline.models.Flights;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     Connection con;
     Statement stmt;
     ResultSet resultSet;
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Resource(name="jdbc/airline")
	DataSource datasource;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Flights> flights = new ArrayList<>();
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		PrintWriter out=response.getWriter();
		try {
			con=datasource.getConnection();
			stmt = con.createStatement();
					resultSet = stmt.executeQuery("select * from login where username= '"+uname+"' and password= '"+pass+"'");
					if(resultSet.next()) {
						
						RequestDispatcher dispatcher = request.getRequestDispatcher("/admin_home.jsp");
						dispatcher.forward(request, response);
					}
					else {
						out.println("<h1>Invalid Login</h1>");
					}
//					
				}
				catch(SQLException e) {
					e.printStackTrace();
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public void destroy() {
		if(con !=null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
