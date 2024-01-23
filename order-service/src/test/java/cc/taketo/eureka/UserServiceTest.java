package cc.taketo.eureka;

import cc.taketo.Application;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;

@SpringBootTest(classes = Application.class)
public class UserServiceTest {

    @Resource
    private RestTemplate restTemplate;

    private Logger logger = LoggerFactory.getLogger(UserServiceTest.class);

    private String baseUrl = "http://user-service/user";

    @Test
    public void getUser() {
        String user = restTemplate.getForObject(
                baseUrl + "/get/1",
                String.class
        );
        logger.info(user);
    }

    @Test
    public void getAllUser() {
        String user = restTemplate.getForObject(
                baseUrl + "/list",
                String.class
        );
        logger.info(user);
    }
}
