package com.recruit.Recruit03_mvn.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class Board extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int rent_no;
    private int room_cnt;
    private double month_rent;
    private double unit_rent;
    private double maint_cost;
    private double best_rent;
    private int rent_room_cnt;
    private double max_profit;
    private String reg_user;
    private String ip_addr;
    private LocalDateTime reg_date;
}
