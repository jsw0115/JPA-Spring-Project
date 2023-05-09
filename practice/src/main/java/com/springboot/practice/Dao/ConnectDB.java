package com.springboot.practice.Dao;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import javax.sql.DataSource;
import java.sql.Connection;

public class ConnectDB {
    private DataSource dataSource;

    public static void main(String[] args) throws Exception {
//        ApplicationContext ctx = new GenericXmlApplicationContext("dbtest.xml");
//        ConnectDB cd = ctx.getBean(ConnectDB.class);
//        cd.connectTest();
    }

    public DataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void connectTest() {
        try {
            Connection conn = dataSource.getConnection();
            System.out.println("연결성공");
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
