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
public class Mon_Model {
    Database db = new Database();
    Statement stm;
    public ArrayList<MonHoc_DTO> get_all()
    {
        ArrayList<MonHoc_DTO> list = new ArrayList<MonHoc_DTO>();
        try
        {
            String sql = "SELECT * FROM db_monhoc";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int mamon = rs.getInt("ID_Mon");
                    String tenmon = rs.getString("Ten_Mon");
                    MonHoc_DTO lop = new MonHoc_DTO(mamon,tenmon);
                    list.add(lop);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    
    public ArrayList<MonHoc_DTO> get_by_id(String result)
    {
        ArrayList<MonHoc_DTO> list = new ArrayList<MonHoc_DTO>();
        try
        {
            String sql = "SELECT * FROM db_monhoc WHERE ID_Mon like  '%"+result+"%' or Ten_Mon like '%"+result+"%'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int malop = rs.getInt("ID_Mon");
                    String tenlop = rs.getString("Ten_Mon");
                    MonHoc_DTO mon = new MonHoc_DTO(malop,tenlop);
                    list.add(mon);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    public MonHoc_DTO select_by_id(String result)
    {
        //ArrayList<MonHoc_DTO> list = new ArrayList<MonHoc_DTO>();
        MonHoc_DTO lop = null;
        try
        {
            String sql = "SELECT * FROM db_monhoc WHERE ID_Mon = '"+result+"'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int malop = rs.getInt("ID_Mon");
                    String tenlop = rs.getString("Ten_Mon"); 
                    lop = new MonHoc_DTO(malop,tenlop);
                    //list.add(lop);
                }
                
            }
        }catch(Exception e){ System.out.print(e);}
        return lop;
    }
    
    public boolean insert(MonHoc_DTO mon)
    {
        String sql = "insert into db_monhoc(Ten_Mon) values ('"+mon.getTenMon()+"')";
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
    
    public boolean Delete(String mamon) {
        try {
            String delete = "DELETE FROM db_monhoc WHERE ID_Mon='" + mamon + "'";
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
    public boolean Update(MonHoc_DTO mon)
    {
        try {
            String delete ="UPDATE db_mon SET Ten_Mon = '"+mon.getTenMon()+"' where ID_Mon = '"+mon.getMon_ID()+"'";
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
