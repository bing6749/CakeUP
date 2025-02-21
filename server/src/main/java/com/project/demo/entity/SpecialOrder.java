package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 特价订单：(SpecialOrder)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "SpecialOrder")
public class SpecialOrder implements Serializable {

    // SpecialOrder编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "special_order_id")
    private Integer special_order_id;

    // 订单编号
    @Basic
    private String order_no;
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
    // 现特价
    @Basic
    private String current_special_price;
    // 图片
    @Basic
    private String picture;
    // 用户编号
    @Basic
    private Integer user_no;
    // 用户姓名
    @Basic
    private String user_name;
    // 取货类型
    @Basic
    private String picking_type;
    // 联系电话
    @Basic
    private String contact_number;
    // 地址
    @Basic
    private String address;




    // 支付状态
    @Basic
    private String pay_state;

    // 支付类型: 微信、支付宝、网银
    @Basic
    private String pay_type;










    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
