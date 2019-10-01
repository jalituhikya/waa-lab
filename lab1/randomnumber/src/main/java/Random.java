import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/Random")
public class Random extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // super.doGet(req, resp);

        int control=(int)(10* Math.random());
        int first=(int) (10* Math.random());
        int second=(int) (10* Math.random());
        int third=(int) (10* Math.random());

        System.out.println("Control result: " + control);

        req.setAttribute("control", control);
        req.setAttribute("first", first);
        req.setAttribute("second", second);
        req.setAttribute("third", third);

        req.getRequestDispatcher("result.jsp").forward(req,resp);
    }

}
