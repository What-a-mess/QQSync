package cn.edu.csu.dyp.Service;

import java.util.ArrayList;
import java.util.List;


import cn.edu.csu.dyp.archived.dao.goodsDao.GetItemByIdDao;
import cn.edu.csu.dyp.archived.dao.orderDao.AddOrderDao;
import cn.edu.csu.dyp.archived.dao.orderDao.GetOrderDao;
import cn.edu.csu.dyp.archived.dao.orderDao.GetOrderIdDao;
import cn.edu.csu.dyp.archived.dao.orderDao.ModifyItemStatusDao;
import cn.edu.csu.dyp.archived.dao.util.DataBaseDao;
import cn.edu.csu.dyp.archived.model.goods.Item;
import cn.edu.csu.dyp.archived.model.user.LineItem;
import cn.edu.csu.dyp.archived.model.user.Order;
import org.apache.log4j.Logger;

public class OrderService {
    private static Logger logger=Logger.getLogger(DataBaseDao.class);
    /*
     * Date sql自动填写,lineItem only use itemId and quantity
     * */
    public boolean makeOrder(String userId, String shipAddress, String billAddress, List<LineItem> lineItems) {
        boolean res =false;
        try(DataBaseDao dataBaseDao = new DataBaseDao()) {
            if(dataBaseDao.query(new AddOrderDao(userId,shipAddress,billAddress))){
                String orderId = dataBaseDao.query(new GetOrderIdDao(userId));
                if (orderId!=null && dataBaseDao.query(new ModifyItemStatusDao(userId,orderId,lineItems))) {
                    res =true;
                    logger.info(userId+ "make new order");
                }
            }
        }
        return res;
    }

    public List<Order> getOrderByUser(String userId) {
        List <Order> orders,res = new ArrayList<>();
        try(DataBaseDao dataBaseDao = new DataBaseDao()) {
            orders=dataBaseDao.query(new GetOrderDao(userId));
            for(Order order:orders) {
                List<LineItem> addLineItemList= new ArrayList<>();
                for(LineItem lineItem:order.getLineItemList()) {
                    Item addItem =  dataBaseDao.query(new GetItemByIdDao(lineItem.getItem().getItemId()));
                    addLineItemList.add(new LineItem(addItem,lineItem.getQuantity()));
                }
                res.add(new Order(order.getOrderId(),order.getUserId(),order.getOrderDate(),order.getShipAddress(),order.getBillAddress(),order.getStatus(),addLineItemList));
            }
        }
        return res;
    }
}