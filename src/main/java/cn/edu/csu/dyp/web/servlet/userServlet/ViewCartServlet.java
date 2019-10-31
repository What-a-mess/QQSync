package cn.edu.csu.dyp.web.servlet.userServlet;

import cn.edu.csu.dyp.model.goods.Category;
import cn.edu.csu.dyp.model.goods.Product;
import cn.edu.csu.dyp.model.order.Cart;
import cn.edu.csu.dyp.model.user.LineItem;
import cn.edu.csu.dyp.model.user.User;
import cn.edu.csu.dyp.service.CartService;
import cn.edu.csu.dyp.service.GoodsService;
import cn.edu.csu.dyp.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.sampled.Line;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ViewCartServlet")
public class ViewCartServlet extends HttpServlet {
    private static final String CART_PAGE = "WEB-INF/jsp/AfterLogin/cart.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        // 根据user相关属性搜索购物车并setAttribute
        CartService cartService = new CartService();
        List<LineItem> cart = cartService.getCart(user.getUserId());
        List<Cart> shownCart = new ArrayList<>();
        for(LineItem lineItem:cart) {
            Product product = new GoodsService().getProductById(lineItem.getItem().getProductId());
            Category category = new GoodsService().getCategoryById(product.getCategoryId());
            shownCart.add(new Cart(lineItem.getItem().getItemId(),product.getProductName(),category.getCategoryName(),lineItem.getItem().getListPrice(),lineItem.getQuantity()));
        }
        request.setAttribute("lineItems", shownCart);

        request.getRequestDispatcher(CART_PAGE).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
