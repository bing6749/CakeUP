package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 商品类型：(CommodityType)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "CommodityType")
public class CommodityType implements Serializable {

    // CommodityType编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "commodity_type_id")
    private Integer commodity_type_id;

    // 类型
    @Basic
    private String type;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
