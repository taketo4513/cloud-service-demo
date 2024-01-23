package cc.taketo.nacos;

import cc.taketo.Application;
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

@SpringBootTest(classes = Application.class)
public class OrderServiceTest {

    @Resource
    private RestTemplate restTemplate;

    @Resource
    private DiscoveryClient discoveryClient;

    private Logger logger = LoggerFactory.getLogger(OrderServiceTest.class);

    private ServiceInstance orderServiceInstance = null;

    @BeforeEach
    public void init() {
        List<ServiceInstance> instances = discoveryClient.getInstances("order-service");
        orderServiceInstance = instances.get(new Random().nextInt(instances.size()));
    }

    @Test
    public void getUser() {
        String order = restTemplate.getForObject(
                orderServiceInstance.getUri() + "/order/get/1",
                String.class
        );
        logger.info(order);
    }

    @Test
    public void getAllUser() {
        String order = restTemplate.getForObject(
                orderServiceInstance.getUri() + "/order/list",
                String.class
        );
        logger.info(order);
    }
}
