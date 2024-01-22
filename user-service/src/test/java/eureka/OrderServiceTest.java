package eureka;

import cc.taketo.Application;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;

@SpringBootTest(classes = Application.class)
public class OrderServiceTest {

    @Resource
    private RestTemplate restTemplate;

    private Logger logger = LoggerFactory.getLogger(OrderServiceTest.class);

    private String baseUrl = "http://order-service/order";

    @Test
    public void getUser() {
        String order = restTemplate.getForObject(
                baseUrl + "/get/1",
                String.class
        );
        logger.info(order);
    }

    @Test
    public void getAllUser() {
        String order = restTemplate.getForObject(
                baseUrl + "/list",
                String.class
        );
        logger.info(order);
    }
}
