

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest rq, HttpServletResponse rp) throws ServletException, IOException {
		
		HttpSession h = rq.getSession();
		h.removeAttribute("user");
		h.invalidate();
		rp.sendRedirect("logineg.jsp");
		
	}

}
