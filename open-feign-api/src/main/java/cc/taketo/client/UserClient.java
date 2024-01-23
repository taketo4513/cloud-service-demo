package cc.taketo.client;

import cc.taketo.common.Result;
import cc.taketo.entity.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient("user-service")
public interface UserClient {

    @GetMapping("/user/get/{id}")
    Result<User> getUser(@PathVariable Integer id);

    @GetMapping("/user/list")
    Result<List<User>> getAllUser();
}
