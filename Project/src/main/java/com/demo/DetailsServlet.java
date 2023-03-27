package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import com.airline.models.Flights;




@WebServlet("/detailsServlet")
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Set<String> set=new HashSet<String>();
     Connection con;
     Statement stmt;
     ResultSet resultSet;
    public DetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Resource(name="jdbc/airline")
	DataSource datasource;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Flights> flights = new ArrayList<>();
		String flight_id=request.getParameter("flight");
		String date=request.getParameter("Date");
		String No_of_persons=request.getParameter("Persons");
		PrintWriter out=response.getWriter();
		System.out.println(flight_id);
		try {
			con=datasource.getConnection();
			stmt = con.createStatement();
					resultSet = stmt.executeQuery("select * from flights where id= '"+flight_id+"'");
				String Price=" ",Name="",Source="",Destination="";
				int id=0;
					if (resultSet.next()) {
						
						id = resultSet.getInt("id");
						Name = resultSet.getString("Name");
						Source = resultSet.getString("Source");
						Destination = resultSet.getString("Destination");
						Price = resultSet.getString("Price");
						Flights flight = new Flights(id, Name, Source, Destination,Price);
						System.out.println(Source+Destination+Name);
					    flights.add(flight);
					}
					int Total_Price=Integer.parseInt(Price)*Integer.parseInt(No_of_persons);
					request.setAttribute("Flight_id", id);
					request.setAttribute("Source", Source);
					request.setAttribute("Destination", Destination);
					request.setAttribute("Airline",Name);
					request.setAttribute("date", date);
					request.setAttribute("persons", No_of_persons);
					request.setAttribute("price", Price);
					request.setAttribute("Total", Total_Price);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/Details.jsp");
					dispatcher.forward(request, response);
				}
				catch(SQLException e) {
					e.printStackTrace();
				}catch(NumberFormatException ignored) {
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
