package cn.edu.csu.dyp.dao.goodsDao;

import cn.edu.csu.dyp.dao.util.DBI;
import cn.edu.csu.dyp.model.goods.Category;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ShowCategoryDao implements DBI<List<Category>> {
    private static final String showCategoryQuery = "select * from categoryInfo";

    @Override
    public List<Category> query(Statement statement) {
        List<Category> res = new ArrayList<>();
        try (ResultSet resultSet = statement.executeQuery(showCategoryQuery)) {
            while (resultSet.next()) {
                String name = resultSet.getString("categoryName");
                String id = resultSet.getString("categoryId");
                res.add(new Category(id,name));
            }
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return res;
    }
}
