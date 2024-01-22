package cc.taketo.service.impl;

import cc.taketo.entity.Order;
import cc.taketo.mapper.OrderMapper;
import cc.taketo.service.OrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Order> implements OrderService {
}
