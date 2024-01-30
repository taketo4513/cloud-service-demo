package cc.taketo.nacos;

import cc.taketo.OrderServiceApplication;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import java.util.List;
import java.util.Random;

@SpringBootTest(classes = OrderServiceApplication.class)
public class UserServiceTest {

    @Resource
    private RestTemplate restTemplate;

    @Resource
    private DiscoveryClient discoveryClient;

    private Logger logger = LoggerFactory.getLogger(UserServiceTest.class);

    private ServiceInstance orderServiceInstance = null;

    @BeforeEach
    public void init() {
        List<ServiceInstance> instances = discoveryClient.getInstances("user-service");
        orderServiceInstance = instances.get(new Random().nextInt(instances.size()));
    }

    @Test
    public void getUser() {
        String user = restTemplate.getForObject(
                orderServiceInstance.getUri() + "/user/get/1",
                String.class
        );
        logger.info(user);
    }

    @Test
    public void getAllUser() {
        String user = restTemplate.getForObject(
                orderServiceInstance.getUri() + "/user/list",
                String.class
        );
        logger.info(user);
    }
}
