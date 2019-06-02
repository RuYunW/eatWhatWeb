package servlet;

import com.wry.dao.FoodRandomDao;
import com.wry.domain.Food;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "InsertFood",urlPatterns = "/InsertFood")
public class InsertFood extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Food food = new Food();
        HttpSession session = request.getSession(true);
        food.setFoodname(request.getParameter("foodname"));
        food.setFoodprice(Float.parseFloat(request.getParameter("foodprice")));
        food.setFood_store_id((String)session.getAttribute("storeID"));

        FoodRandomDao foodRandomDao = new FoodRandomDao();
        foodRandomDao.insert(food);
        request.getRequestDispatcher("store_manager_page/store_manager_foodlist.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
