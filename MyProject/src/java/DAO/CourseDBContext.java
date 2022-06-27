/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Course;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author win
 */
public class CourseDBContext extends DBContext<Course>{
    public List<Course> getAllCourse(){
        List<Course> list = new ArrayList<>();
        
        try {
            String sql="select * from Course";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
          while (rs.next()) {
                Course cs = new Course();
                cs.setCid(rs.getInt("cid"));
                cs.setCname(rs.getString("cname"));
            }
        } catch (SQLException ex) {
        }
        return list;
    }
}
