/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Course;
import Model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author win
 */
public class StudentDBContext extends DBContext<Student>{
    
    public List<Student> getAllStudent(){
        List<Student> list = new ArrayList<>();
        
        try {
            String sql="select * from Student";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
          while (rs.next()) {
                Student stu = new Student();
                stu.setStuid(rs.getInt("stuid"));
                stu.setStuname(rs.getString("stuname"));
                stu.setImage(rs.getInt("image"));
                stu.setMssv(rs.getInt("mssv"));
            }
        } catch (SQLException ex) {
        }
        return list;
    }
}
