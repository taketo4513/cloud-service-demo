package cc.taketo.client;

import cc.taketo.common.Result;
import cc.taketo.config.DefaultFeignConfig;
import cc.taketo.entity.Order;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(value = "order-service", configuration = DefaultFeignConfig.class)
public interface OrderClient {

    @GetMapping("/order/get/{id}")
    Result<Order> getOrder(@PathVariable Integer id);

    @GetMapping("/order/list")
    Result<List<Order>> getAllOrder();
}
