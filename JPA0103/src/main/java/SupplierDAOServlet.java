
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;

@WebServlet("/SupplierDAOServlet")
public class SupplierDAOServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SupplierDAOServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("id");
		String sname = request.getParameter("sname");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String zip = request.getParameter("zip");
		String street = request.getParameter("street");
		String method = request.getParameter("method");
		Supplier s1 = new Supplier();
		s1.setSupId(Integer.parseInt(sid));
		s1.setSupName(sname);
		s1.setState(state);
		s1.setCity(city);
		s1.setZip(zip);
		s1.setStreet(street);
		SupplierDAO dao = new SupplierDAO();
		if (method.equals("add"))
			dao.addSupplier(s1);
		if (method.equals("update")) {
			dao.editSupplier(s1);
		}
		if (method.equals("delete")) {
			dao.deleteSupplier(s1.getSupId());
		}
		List<Supplier> result = dao.getAllSupplier();
		request.setAttribute("supplier", result);
		request.getRequestDispatcher("viewSupplier.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}