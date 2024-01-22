package cc.taketo.service.impl;

import cc.taketo.entity.User;
import cc.taketo.mapper.UserMapper;
import cc.taketo.service.UserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
}
