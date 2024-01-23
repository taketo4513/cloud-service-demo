package cc.taketo.entity;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class User {

    private Integer id;

    private String username;

    private String password;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;

    private Integer isDelete;
}
