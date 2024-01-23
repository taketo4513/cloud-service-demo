package cc.taketo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;

// 启用服务发现
@EnableDiscoveryClient
// 启用Feign客户端 扫描指定包
@EnableFeignClients(basePackages = "cc.taketo.client")
// 扫描MyBatis Mapper接口
@MapperScan("cc.taketo.mapper")
// 标识Spring Boot应用
@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
