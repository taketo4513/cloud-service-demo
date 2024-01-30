package cc.taketo.feign;

import cc.taketo.UserServiceApplication;
import cc.taketo.client.OrderClient;
import cc.taketo.common.Result;
import cc.taketo.entity.Order;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@SpringBootTest(classes = UserServiceApplication.class)
public class OrderServiceTest {

    private Logger logger = LoggerFactory.getLogger(OrderServiceTest.class);

    @Resource
    private OrderClient orderClient;

    private ObjectMapper objectMapper = new ObjectMapper();

    @Test
    public void getUser() throws JsonProcessingException {
        Result<Order> order = orderClient.getOrder(1);
        // 注册所有的模块
        objectMapper.findAndRegisterModules();
        String json = objectMapper.writeValueAsString(order);
        logger.info(json);
    }

    @Test
    public void getAllUser() throws JsonProcessingException {
        Result<List<Order>> allOrder = orderClient.getAllOrder();
        // 注册所有的模块
        objectMapper.findAndRegisterModules();
        String json = objectMapper.writeValueAsString(allOrder);
        logger.info(json);
    }

    public static String formatLocalDateTime(LocalDateTime localDateTime, String pattern) {
        // 定义格式化模式
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);

        // 格式化LocalDateTime
        return localDateTime.format(formatter);
    }

}
