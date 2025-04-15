package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 每日特价：(DailySpecials)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DailySpecials")
public class DailySpecials implements Serializable {

    // DailySpecials编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "daily_specials_id")
    private Integer daily_specials_id;

    // 品名
    @Basic
    private String product_name;
    // 类型
    @Basic
    private String type;
    // 规格
    @Basic
    private String specifications;
    // 重量
    @Basic
    private String weight;
    // 口味
    @Basic
    private String flavor;
    // 原价
    @Basic
    private Integer original_price;
    // 现特价
    @Basic
    private Integer current_special_price;
    // 保质期
    @Basic
    private String quality_guarantee_period;
    // 图片
    @Basic
    private String picture;

    // 点击数
    @Basic
    private Integer hits;

    // 点赞数
    @Basic
    private Integer praise_len;












    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
