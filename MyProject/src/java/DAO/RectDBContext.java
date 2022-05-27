/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

/**
 *
 * @author win
 */
import Model.MyRect;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class RectDBContext extends DBContext<MyRect> {

    @Override
    public ArrayList<MyRect> list() {
       ArrayList<MyRect> rects = new ArrayList<>();
        String sql = "SELECT id,x,y,w,h FROM Rect";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                MyRect r = new MyRect();
                r.setX(rs.getInt("x"));
                r.setY(rs.getInt("y"));
                r.setW(rs.getInt("w"));
                r.setH(rs.getInt("h"));
                rects.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(RectDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return rects;
    }

    @Override
    public MyRect get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(MyRect model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(MyRect model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(MyRect model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
