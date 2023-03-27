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
@WebServlet("/travelDetailsServlet")
public class TravelDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;	
     Connection con;
     Statement stmt;
     ResultSet resultSet;
    public TravelDetailsServlet() {
        super();
    }
    @Resource(name="jdbc/airline")
	DataSource datasource;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Flights> flights = new ArrayList<>();
		String date=request.getParameter("Date");
		String source=request.getParameter("Source");
		String destination=request.getParameter("Destination");
		String No_of_persons=request.getParameter("Persons");
		PrintWriter out=response.getWriter();
		try {
			con=datasource.getConnection();
			stmt = con.createStatement();
					resultSet = stmt.executeQuery("select * from flights where Source= '"+source+"' and Destination= '"+destination+"'");
			
				while (resultSet.next()) {
						int id = resultSet.getInt("id");
						String Name = resultSet.getString("Name");
						String Source = resultSet.getString("Source");
						String Destination = resultSet.getString("Destination");
						String Price = resultSet.getString("Price");
						System.out.println("ASAS"+Name+"-"+Source+"-"+Destination);
						Flights flight = new Flights(id, Name, Source, Destination,Price);
							    flights.add(flight);
							
					}
					request.setAttribute("flights__", flights);
					request.setAttribute("Date", date);
					request.setAttribute("Persons", No_of_persons);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/Flight_Selection.jsp");
					dispatcher.forward(request, response);
				
				}
				catch(SQLException e) {
					e.printStackTrace();
				}

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
