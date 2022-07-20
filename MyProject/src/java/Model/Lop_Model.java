/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DTO.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author TiT_TM
 */
public class Lop_Model {
    Database db = new Database();
    Statement stm;
    public ArrayList<Lop_DTO> get_all()
    {
        ArrayList<Lop_DTO> list = new ArrayList<Lop_DTO>();
        try
        {
            String sql = "SELECT * FROM db_lop";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int malop = rs.getInt("ID_Lop");
                    String tenlop = rs.getString("Ten_Lop");
                    int siso = rs.getInt("SiSo");
                    Lop_DTO lop = new Lop_DTO(malop,tenlop,siso);
                    list.add(lop);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    
    public ArrayList<Lop_DTO> get_by_id(String result)
    {
        ArrayList<Lop_DTO> list = new ArrayList<Lop_DTO>();
        try
        {
            String sql = "SELECT * FROM db_lop WHERE ID_Lop like  '%"+result+"%' or Ten_Lop like '%"+result+"%' or SiSo like '%"+result+"%'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int malop = rs.getInt("ID_Lop");
                    String tenlop = rs.getString("Ten_Lop");
                    int siso = rs.getInt("SiSo");
                    Lop_DTO lop = new Lop_DTO(malop,tenlop,siso);
                    list.add(lop);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    public Lop_DTO select_by_id(String result)
    {
        //ArrayList<Lop_DTO> list = new ArrayList<Lop_DTO>();
        Lop_DTO lop = null;
        try
        {
            String sql = "SELECT * FROM db_lop WHERE ID_Lop = '"+result+"'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int malop = rs.getInt("ID_Lop");
                    String tenlop = rs.getString("Ten_Lop");
                    int siso = rs.getInt("SiSo");
                    lop = new Lop_DTO(malop,tenlop,siso);
                    //list.add(lop);
                }
                
            }
        }catch(Exception e){ System.out.print(e);}
        return lop;
    }
    
    public boolean insert(Lop_DTO lop)
    {
        String sql = "insert into db_lop(Ten_Lop,SiSo) values ('"+lop.getTenLop()+"',"+lop.getSiSo()+")";
        try {
            db.connect();
            stm = db.getConn().createStatement();
            stm.executeUpdate(sql);
            db.close();
            return true;
        } catch (SQLException e) {
            System.out.println("Error " + e.toString());
        }
        return false;
    }
    
    public boolean Delete(String malop) {
        try {
            String delete = "DELETE FROM db_lop WHERE ID_Lop='" + malop + "'";
            db.connect();
            PreparedStatement pst = db.getConn().prepareStatement(delete);
            pst.executeUpdate();
            db.close();
            return true;
        } catch (SQLException e) {
            System.out.print(e.toString());
            return false;
        }
    }
    public boolean Update(Lop_DTO lop)
    {
        try {
            String delete ="UPDATE db_lop SET Ten_Lop = '"+lop.getTenLop()+"', SiSo='"+lop.getSiSo()+"' where ID_Lop = '"+lop.getLop_ID()+"'";
// "UPDATE db_lop SET Ten_Lop = '"+lop.getTenLop()+"', SiSo='"+lop.getSiSo()+"' where ID_Lop = '"+lop.getLop_ID()+"'";
                db.connect();
            PreparedStatement pst = db.getConn().prepareStatement(delete);
            pst.executeUpdate();
            db.close();
            return true;
        } catch (SQLException e) {
            System.out.print(e.toString());
            return false;
        }
    }
    
    
}
