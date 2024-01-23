package cc.taketo.controller;

import cc.taketo.common.Result;
import cc.taketo.entity.User;
import cc.taketo.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    private Logger logger = LoggerFactory.getLogger(UserController.class);

    @GetMapping("/get/{id}")
    public Result<User> getUser(@PathVariable Integer id, @RequestHeader(value = "X-Request", required = false) String request) {
        logger.info(request);
        return Result.success(userService.getById(id));
    }

    @GetMapping("/list")
    public Result<List<User>> getAllUser() {
        return Result.success(userService.list());
    }
}
