package cc.taketo.controller;

import cc.taketo.common.Result;
import cc.taketo.entity.User;
import cc.taketo.service.UserService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @GetMapping("/get/${id}")
    public Result<User> getUser(@PathVariable String id) {
        return Result.success(userService.getById(id));
    }

    @GetMapping("/list")
    public Result<List<User>> getAllUser() {
        return Result.success(userService.list());
    }
}
