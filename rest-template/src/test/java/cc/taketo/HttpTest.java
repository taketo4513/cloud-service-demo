package cc.taketo;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;

@SpringBootTest(classes = Application.class)
public class HttpTest {

    @Resource
    private RestTemplate restTemplate;

    @Test
    public void printHttpConfig(){
        System.out.println(restTemplate);
    }

    @Test
    public void get() {
        String baidu = restTemplate.getForObject("https://taketo.cc", String.class);
        System.out.println(baidu);
    }
}
