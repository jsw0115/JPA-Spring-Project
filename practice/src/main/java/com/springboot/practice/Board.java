package com.springboot.practice;

import lombok.AccessLevel;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Entity
public class Board extends BaseTimeEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int room_cnt;
    private double month_rent;
    private double unit_rent;
    private double maint_cost;


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
}
