package cn.edu.csu.dyp.Controller;

import org.hamcrest.core.IsNull;
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.client.match.MockRestRequestMatchers;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration("classpath:applicationContext.xml")
@WebAppConfiguration
public class UserControllerTest {
    @Autowired
    private WebApplicationContext wac;
    MockMvc mockMvc;

//    @Before
//    public void setUp() {
//        mockMvc=MockMvcBuilders.webAppContextSetup(wac).build();
//    }
//
//    @Test
//    public void  loginTest() throws Exception{
//        mockMvc.perform(post("/user/login")).andExpect(status().isOk());
//    }
}
