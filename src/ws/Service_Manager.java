package ws;

import java.util.ArrayList;
import java.util.List;


import javax.ws.rs.client.*;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


import com.Model.Book;
import com.Model.User;


public class Service_Manager {
	
	
	static String url = "http://localhost:8084/Ecommerce_RESTful_Service_Bouzal/Service_Manager";
	static javax.ws.rs.client.Client client = ClientBuilder.newClient();
	static WebTarget target = client.target(url);
	
	//=================== All Books ==========================
	
	public ArrayList<Book> AllBook(String sql){
		
        List<Book> L = client.target(url).path("/AllBook/"+sql).request(MediaType.APPLICATION_JSON).get(Response.class).readEntity(new GenericType<List<Book>>() {});
		
		
		ArrayList<Book> A=new ArrayList<Book>();
		
		for(Book i : L) {
			A.add(i);
		}
		return A;
		
	}

	//================== Add Book ============================
	
	public void addBook(String fileName, String bookName, String auteurName, int prix) {// throws UniformInterfaceException, ClientHandlerException, JsonProcessingException {
		
		Book book = new Book(bookName,auteurName,prix);
	
		target.path("/AddBook").request().post(Entity.json(book));

	}
	

    //================== find Book ============================
	public ArrayList<Book> findBook(String bookName) {
		
        List<Book> L = client.target(url).path("/FindBook/"+bookName).request(MediaType.APPLICATION_JSON).get(Response.class).readEntity(new GenericType<List<Book>>() {});
		
		
		ArrayList<Book> A=new ArrayList<Book>();
		
		for(Book i : L) {
			A.add(i);
		}
		return A;
		
	}
	
	 //================== find Book by Id ============================
	public Book findBookById(int id) {
		// TODO Auto-generated method stub 
		return target.path("/FindBookById/" +id).request(MediaType.APPLICATION_JSON).get(Book.class);

	}
	
	
	//####################################### For Account ###########################################
	
	
	//================== Register ============================
	public void register(String name, String last_name, String tell, String email, String password) {
		// TODO Auto-generated method stub
		User user = new User(name, last_name, tell, email, password);
		
		target.path("/Register").request().post(Entity.json(user));
		
	}	
	
	//================ Authentification ===================
	public User authentificate(String email, String pass) {
		// TODO Auto-generated method stub
		return target.path("/Authentificate/" +email+"/"+pass).request(MediaType.APPLICATION_JSON).get(User.class);
	}	

	//============= FindType ( Admin or User ) =============	
	
	public String findType(String email, String password) {
		// TODO Auto-generated method stub
		return target.path("/FindType/" +email+"/"+password).request(MediaType.APPLICATION_JSON).get(String.class);
	}

	//########################################### For Packet #########################################
	
	
	 //=================  AddBookToPanier  =====================

	public void addBookToPanier(String bookName, String auteurName, int prix) {
		// TODO Auto-generated method stub
		Book book = new Book(bookName,auteurName,prix);
		
		target.path("/AddBookToPanier").request().post(Entity.json(book));

	}

	//=================  Delete Book From Packet  =====================
	
	public void deletBookPanier(int id) {
		// TODO Auto-generated method stub
		target.path("/DeletBookPanier/" +id).request().delete();
	}

	//=================  TotalPrixe  =====================
	
	public int totalPrixe() {
		// TODO Auto-generated method stub
		return target.path("/TotalPrixe" ).request(MediaType.APPLICATION_JSON).get(int.class);
	}

	
	
	
	

}
