package com.tests;

import java.sql.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author nkaka
 */
public class TestSelectStat {

    public static void main(String[] x) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/skedjo", "root", "Nkaka@16628");
            PreparedStatement ps = conn.prepareStatement("SELECT names, pos FROM employee"
                                                       + "WHERE compName = '"+"lio's"+"'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                System.out.println(rs.getString(1));
                System.out.println(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
