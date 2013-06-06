package package1;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Dbstore {
	@PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Key key;
    
    @Persistent
    String firstName;
    @Persistent
    String lastName;
    @Persistent
    String email;
    @Persistent
    String password;
    @Persistent
    String confirmPassword;
    @Persistent
    private BlobKey blobKey;
    
	
	
	public Dbstore() {
		// TODO Auto-generated constructor stub
	}
	public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}
	public BlobKey getblobKey() {
		return blobKey;
	}

	public void setblobKey(BlobKey blobKey) {
		this.blobKey = blobKey;
	}

	public String getfirstName() {
		return firstName;
	}
	public void setfirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getlastName() {
		return lastName;
	}
	public void setlastName(String lastName) {
		this.lastName = lastName;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getconfirmPassword() {
		return password;
	}
	public void setconfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	}

