
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class jsplogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest rq, HttpServletResponse rp) throws ServletException, IOException {
		
		String name=rq.getParameter("user");
		String pw=rq.getParameter("pass");
		if(name.equals("raj")&&(pw.equals("1234")))
		{
			HttpSession h = rq.getSession();
			h.setAttribute("user",name);
			rp.sendRedirect("welcome.jsp");
		}
		else
		{
			rp.sendRedirect("logineg.jsp");
		}
				
	}

}
