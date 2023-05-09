SELECT
    rent_no
    , room_cnt
    , month_rent
    , unit_rent
    , maint_cost
    , best_rent
    , rent_room_cnt
    , max_profit, reg_user
    , ip_addr,
    reg_date
FROM
    tbl_maxrent_stat
ORDER BY
    rent_no desc