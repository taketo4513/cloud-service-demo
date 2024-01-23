package cc.taketo.feign;

import cc.taketo.Application;
import cc.taketo.client.UserClient;
import cc.taketo.common.Result;
import cc.taketo.entity.User;
import com.google.gson.Gson;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.List;

@SpringBootTest(classes = Application.class)
public class UserServiceTest {

    private Logger logger = LoggerFactory.getLogger(UserServiceTest.class);

    @Resource
    private UserClient userClient;

    // 创建Gson对象
    private Gson gson = new Gson();

    @Test
    public void getUser() {
        Result<User> user = userClient.getUser(1);
        String json = gson.toJson(user);
        logger.info(json);
    }

    @Test
    public void getAllUser() {
        Result<List<User>> allUser = userClient.getAllUser();
        String json = gson.toJson(allUser);
        logger.info(json);
    }
}
