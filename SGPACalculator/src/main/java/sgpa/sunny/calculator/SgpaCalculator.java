package sgpa.sunny.calculator;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Servlet implementation class registrationservlet
 */

@WebServlet("/sgpacalculator")
public class SgpaCalculator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
	 ArrayList<Integer> creditsList = new ArrayList<>();
    ArrayList<ArrayList<Integer>> marksList = new ArrayList<>();

    for (int i = 1; i <= 4; i++) {
        

        ArrayList<Integer> marks = new ArrayList<>();
        for (int j = 1; j <= 4; j++) {
        	
        	int credit = Integer.parseInt(request.getParameter("subject" + i +""+ j + "-credit"));
            creditsList.add(credit);
            
            int mark = Integer.parseInt(request.getParameter("subject" + i +""+ j + "-marks"));
            marks.add(mark);
        }
        marksList.add(marks);
    }
    
    
    // this is sum value storing the sum of all the credits
    int sum = 0;
    
    for(int n : creditsList) {
    	sum  = sum +n;
    }
    
//    for(ArrayList<Integer> m : marksList) {
//    	for(int n : m) {
//    		
//    		
//    	}
//    }
    
    int sum1=0;
    int m;
    for(int i = 0; i<4;i++) {
    	for(int j = 0; j<4;j++) {
    		int x=0;
    		m = marksList.get(i).get(j);
    		
    		 if (m >= 91) {
                 x = 10;
             } else if (m >= 81 && m <= 90) {
                 x = 9;
             } else if (m >= 71 && m <= 80) {
                 x = 8;
             } else if (m >= 61 && m <= 70) {
                 x = 7;
             } else if (m >= 51 && m <= 60) {
                 x = 6;
             } else if (m >= 41 && m <= 50) {
                 x = 5;
             } else {
                
             }
              x = x*(i+1);
           
             sum1 = sum1 + x;
    		
    		
    	}
    }
    
//    float results = sum1/sum;
    
    
    
    float results = (float)sum1 / (float)sum;
    

    
    
    PrintWriter out = response.getWriter();
    
    String formattedResults = String.format("%.3f", results);
    
    
    request.setAttribute("formattedResults", formattedResults);
   // out.println("Your SGPA is " + formattedResults);

    // Perform calculations or any other processing here

    // Example: Print credits and marks
//         out.println("Credits: " + creditsList);
//         out.println("Marks: " + marksList);
//         out.println("Your SGPA is " +results);
         
//out.println("<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>\r\n"
//		+ "	<link rel=\"stylesheet\" href=\"alert/dist/sweetalert.css\">\r\n"
//		+ "	\r\n"
//		+ "	<script type=\"text/javascript\">\r\n"
//		+ "	\r\n"
//		+ "	var status = document.getElementById(\"status\").value;\r\n"
//		+ "	if(status== \"success\"){\r\n"
//		+ "		swal(\"Congrats\", \"Account Created Succesfully\", \"success\");\r\n"
//		+ "	}\r\n"
//		+ "	\r\n"
//		+ "	</script> ");

    // Forward or redirect as needed
     RequestDispatcher dispatcher = request.getRequestDispatcher("Results.jsp");
     dispatcher.forward(request, response);
	

}}
