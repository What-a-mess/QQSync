package cn.edu.csu.dyp.archived.servlet.goodsServlet;

import cn.edu.csu.dyp.archived.model.goods.Item;
import cn.edu.csu.dyp.archived.service.GoodsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewProductServlet")
public class ViewProductServlet extends HttpServlet {
    private static final String PRODUCT_PAGE = "WEB-INF/jsp/AfterLogin/animalItem.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");
        System.out.println(productId);
        HttpSession session = request.getSession();
        GoodsService goodsService = new GoodsService();

        List<Item> itemList = goodsService.getItemsByProduct(productId);
        session.setAttribute("itemList", itemList);

        request.getRequestDispatcher(PRODUCT_PAGE).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}