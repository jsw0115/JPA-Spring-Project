package com.springboot.practice;

import lombok.Data;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class Board2 extends BaseTimeEntity {

    @Id // primary Key
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
