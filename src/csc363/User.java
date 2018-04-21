package csc363;



import java.io.Serializable;

public class User implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String user;
    private String pass;


    public User() {
        user = "";
        pass = "";

    }

    public User(String user, String pass) {
        this.user = user;
        this.pass = pass;

    }

	public String getuser() {
        return user;
    }

    public void setuser(String user) {
        this.user = user;
    }

    public String getpass() {
        return pass;
    }

    public void setpass(String pass) {
        this.pass = pass;
    }
}
