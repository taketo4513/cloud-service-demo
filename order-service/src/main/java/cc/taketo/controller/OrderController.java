package cc.taketo.controller;

import cc.taketo.common.Result;
import cc.taketo.entity.Order;
import cc.taketo.service.OrderService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/order")
public class OrderController {

    @Resource
    private OrderService userService;

    @GetMapping("/get/{id}")
    public Result<Order> getOrder(@PathVariable Integer id) {
        return Result.success(userService.getById(id));
    }

    @GetMapping("/list")
    public Result<List<Order>> getAllOrder() {
        return Result.success(userService.list());
    }
}
