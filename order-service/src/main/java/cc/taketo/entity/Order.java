package cc.taketo.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.experimental.Accessors;

import java.time.LocalDateTime;

@Data
@TableName("t_order")
@Accessors(chain = true)
public class Order {
    @TableId
    private Integer id;

    private String orderCode;

    private String orderContent;

    private Integer userId;

    private LocalDateTime createTime;

    private LocalDateTime updateTime;

    @TableLogic(value = "0", delval = "1")
    private Integer isDelete;
}
