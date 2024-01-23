package cc.taketo.entity;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Order {

    private Integer id;

    private String orderCode;

    private String orderContent;

    private Integer userId;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;

    private Integer isDelete;
}
