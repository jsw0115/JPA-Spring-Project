package com.springboot.practice.Dto;

import com.springboot.practice.Board;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class BoardRequestDto {
    // private로 선언..
    // 보유 원룸 수 room_cnt INT
    // 매진 월임대료 month_rent DOUBLE
    // 월임대료 증액 unit_rent DOUBLE
    // 유지비 maint_cost DOUBLE

    private int room_cnt;
    private double month_rent;
    private double unit_rent;
    private double maint_cost;


}
