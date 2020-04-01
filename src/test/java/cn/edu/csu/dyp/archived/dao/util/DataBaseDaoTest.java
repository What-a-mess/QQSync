package cn.edu.csu.dyp.archived.dao.util;

import cn.edu.csu.dyp.archived.dao.userDao.IsUserExistDao;
import cn.edu.csu.dyp.archived.dao.userDao.RegisterDao;
import cn.edu.csu.dyp.archived.model.user.User;
import org.junit.Assert;

public class DataBaseDaoTest {
//    @Test
    public void testRegister() {
        try(DataBaseDao dataBaseDao = new DataBaseDao()) {
            Assert.assertTrue(dataBaseDao.query(new RegisterDao(new User(null,"admin","123456",null,"Jacky"))));
        }
    }

//    @Test
    public void testExist() {
        try(DataBaseDao dataBaseDao = new DataBaseDao()) {
            Assert.assertTrue(dataBaseDao.query(new IsUserExistDao("admin")));
            Assert.assertFalse(dataBaseDao.query(new IsUserExistDao("tst")));
        }
    }
}