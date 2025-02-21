package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 限时秒杀：(TimeLimitedSecondKill)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "TimeLimitedSecondKill")
public class TimeLimitedSecondKill implements Serializable {

    // TimeLimitedSecondKill编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "time_limited_second_kill_id")
    private Integer time_limited_second_kill_id;

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
    // 秒杀价
    @Basic
    private Integer price_spike;
    // 保质期
    @Basic
    private String quality_guarantee_period;
    // 图片
    @Basic
    private String picture;







	// 计时器标题
	@Basic
	private String timer_title;

	// 计时开始时间
	@Basic
	private Timestamp timing_start_time;

	// 计时结束时间
	@Basic
	private Timestamp timing_end_time;







    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
