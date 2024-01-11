<%
	boolean authenticated = session.getAttribute("authenticatedUser") == null ? false : true;
	boolean Admin = (boolean) session.getAttribute("Admin");
	if (!authenticated || !Admin)
	{
		String loginMessage = "You have not been authorized to access the URL "+request.getRequestURL().toString();
        session.setAttribute("loginMessage",loginMessage);        
		response.sendRedirect("login.jsp");
	}
%>
