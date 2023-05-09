package com.springboot.practice.Dto;

import com.springboot.practice.Board;
import lombok.Getter;

import java.time.LocalDateTime;

@Getter
public class BoardResponseDto {
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

    public int getRent_no() {
        return rent_no;
    }

    public void setRent_no(int rent_no) {
        this.rent_no = rent_no;
    }

    public int getRoom_cnt() {
        return room_cnt;
    }

    public void setRoom_cnt(int room_cnt) {
        this.room_cnt = room_cnt;
    }

    public double getMonth_rent() {
        return month_rent;
    }

    public void setMonth_rent(double month_rent) {
        this.month_rent = month_rent;
    }

    public double getUnit_rent() {
        return unit_rent;
    }

    public void setUnit_rent(double unit_rent) {
        this.unit_rent = unit_rent;
    }

    public double getMaint_cost() {
        return maint_cost;
    }

    public void setMaint_cost(double maint_cost) {
        this.maint_cost = maint_cost;
    }

    public double getBest_rent() {
        return best_rent;
    }

    public void setBest_rent(double best_rent) {
        this.best_rent = best_rent;
    }

    public int getRent_room_cnt() {
        return rent_room_cnt;
    }

    public void setRent_room_cnt(int rent_room_cnt) {
        this.rent_room_cnt = rent_room_cnt;
    }

    public double getMax_profit() {
        return max_profit;
    }

    public void setMax_profit(double max_profit) {
        this.max_profit = max_profit;
    }

    public String getReg_user() {
        return reg_user;
    }

    public void setReg_user(String reg_user) {
        this.reg_user = reg_user;
    }

    public String getIp_addr() {
        return ip_addr;
    }

    public void setIp_addr(String ip_addr) {
        this.ip_addr = ip_addr;
    }

    public LocalDateTime getReg_date() {
        return reg_date;
    }

    public void setReg_date(LocalDateTime reg_date) {
        this.reg_date = reg_date;
    }

//    private int rent_no;
//    private int room_cnt;
//    private double month_rent;
//    private double unit_rent;
//    private double maint_cost;
//    private double best_rent;
//    private int rent_room_cnt;
//    private double max_profit;
//    private String reg_user;
//    private String ip_addr;
//    private LocalDateTime reg_date;
    @Override
    public String toString() {
        return "BoardListDto [rent_no" + rent_no +
                ", room_cnt" + room_cnt +
                ", month_rent" + month_rent +
                ", unit_rent" + unit_rent +
                ", maint_cost" + maint_cost +
                ", best_rent" + best_rent +
                ", rent_room_cnt" + rent_room_cnt +
                ", max_profit" + max_profit +
                ", reg_user" + reg_user +
                ", ip_addr" + ip_addr +
                ", reg_date" + reg_date +"]";
    }
}
