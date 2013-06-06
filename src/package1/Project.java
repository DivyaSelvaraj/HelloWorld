package package1;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.images.ImagesService;
import com.google.appengine.api.images.ImagesServiceFactory;

@SuppressWarnings("serial")
public class Project extends HttpServlet { 
		public void doGet(HttpServletRequest req, HttpServletResponse resp)
				throws IOException {
			//String firstName = new String();
			 String emailret = req.getParameter("email");
			 String password1 = req.getParameter("password");
			 String fname= new String();
				ServletContext context= getServletContext();
				 PersistenceManager pm = PMF.get().getPersistenceManager();
				 req.setAttribute("UserName", emailret);
				 Query query1 = pm.newQuery(Dbstore.class,"email == emailret1");
			     query1.declareParameters("String emailret1");
			     @SuppressWarnings("unchecked")
			  List<Dbstore> results11 = (List<Dbstore>) query1.execute(emailret);

			     if (results11.iterator().hasNext()) 
			           for (Dbstore e : results11)
			            if (e.getemail().equals(emailret) && e.getPassword().equals(password1))
			            {
			            	req.setAttribute("UserName", e.getfirstName());
			            	/*fname= e.getfirstName();
			            	resp.getWriter().println(fname);*/
			            	ImagesService imagesService = ImagesServiceFactory.getImagesService();
			        		  String imageUrl = imagesService.getServingUrl(e.getblobKey(),250,false);
			        		  System.out.println(imageUrl);
			        		  req.setAttribute("imageUrl", imageUrl);
			        		  RequestDispatcher rd= context.getRequestDispatcher("/account.jsp");
			      				try {
			      					rd.forward(req, resp);
			      					resp.sendRedirect("/account.jsp");
			      					
			      				} catch (ServletException e1) {
			      					// TODO Auto-generated catch block
			      					e1.printStackTrace();
			      				}
			            }
			            else {
			        		  resp.getWriter().println("Incorrect password,please try again!");
			        	  }
			
			         else {
			        	 resp.getWriter().println("User Not Registered!");
			        	 resp.getWriter().println("Please Do Register");
			        	 
			         }
			     
		}}


