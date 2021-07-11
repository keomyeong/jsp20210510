package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JDBC04Servlet
 */
@WebServlet("/JDBC04Servlet")
public class JDBC04Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC04Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		executeJDBC();
		response.getWriter().print("<h1>jdbc04</h1>");
		
		
		
	}
private void executeJDBC() {
		
		String sql = "SELECT * FROM Employees WHERE EmployeeID = 1";
		
		// 연결
		String url = "jdbc:mysql://3.34.138.9/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			//클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			//연결
			con = DriverManager.getConnection(url, user, password);
			
			// statement 생성
			stmt = con.createStatement();
			
			// 쿼리 실행, 결과(ResultSet) 리턴
			rs = stmt.executeQuery(sql);
			
			// 결과 탐색
			if (rs.next()) {
				//int id = Integer.parseInt(rs.getString(1));밑에거랑 같음
				int id = rs.getInt(1);
				String lastname = rs.getString(2);
				String firstName = rs.getString(3);
				//String bDate = rs.getString(4);
				Date bDate = rs.getDate(4);

				String photo = rs.getString(5);
				String note = rs.getString(6);

				
				System.out.println(id);
				System.out.println(lastname);
				System.out.println(firstName);
				System.out.println(bDate);
				System.out.println(photo);
				System.out.println(note);

			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
