package package1;

import java.io.IOException;

import java.util.List;
import java.util.Map;
//import java.util.Map;
//import javax.jdo.Query;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import com.google.appengine.api.blobstore.BlobKey;

import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.images.ImagesService;
import com.google.appengine.api.images.ImagesServiceFactory;
@SuppressWarnings("serial")
public class JdoprojectServlet extends HttpServlet {
	private BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		 String firstName = req.getParameter("firstName");
		 String lastName = req.getParameter("lastName");
		 String email = req.getParameter("email");
		 String password = req.getParameter("password");
	     String confirmPassword = req.getParameter("confirmPassword");	
	     Map<String, BlobKey> blobs = blobstoreService.getUploadedBlobs(req);
	        BlobKey blobKey = blobs.get("myFile");
	        PersistenceManager pm = PMF.get().getPersistenceManager();
	        try {
	        	Dbstore e = new Dbstore();
	        	e.setblobKey(blobKey);
	        	e.setconfirmPassword(confirmPassword);
	        	e.setemail(email);
	        	e.setfirstName(firstName);
	        	e.setlastName(lastName);
	        	e.setPassword(password);
	        	pm.makePersistent(e);
	        	String redirectURL = "registration.jsp";
		        resp.sendRedirect(redirectURL);
		   
		     }
		    finally {
		        pm.close();
		    }
	        }
	        }




