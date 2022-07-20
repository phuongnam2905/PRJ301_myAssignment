/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DTO.*;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author TiT_TM
 */
public class BangDiem_Model {
    Database db = new Database();
    Statement stm;
    public ArrayList<BangDiem_DTO> get_all()
    {
        ArrayList<BangDiem_DTO> list = new ArrayList<BangDiem_DTO>();
        try
        {
            String sql = "select ID_BD,Ten_HS,Ten_Lop,Diem,Ten_Mon from db_bangdiem inner join db_lop on db_bangdiem.Lop_id = db_lop.ID_Lop inner join db_hocsinh on \n" +
"db_bangdiem.HS_id = db_hocsinh.ID_HS inner join db_monhoc on db_bangdiem.Mon_id = db_monhoc.ID_Mon order by Ten_Lop;";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int id_bd = rs.getInt("ID_BD");
                    String tenhs = rs.getString("Ten_HS");
                    String tenlop = rs.getString("Ten_Lop");
                    String tenmon = rs.getString("Ten_Mon");
                    float diem = rs.getFloat("Diem");
                    BangDiem_DTO bd = new BangDiem_DTO(id_bd,tenhs,tenmon,tenlop,diem);
                    list.add(bd);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    
    
    
    
    public ArrayList<BangDiem_DTO> get_by_id(String result)
    {
        ArrayList<BangDiem_DTO> list = new ArrayList<BangDiem_DTO>();
        try
        {
            String sql = "select ID_BD,Ten_HS,Ten_Lop,Diem,Ten_Mon from db_bangdiem inner join db_lop on db_bangdiem.Lop_id = db_lop.ID_Lop inner join db_hocsinh on \n" +
"db_bangdiem.HS_id = db_hocsinh.ID_HS inner join db_monhoc on db_bangdiem.Mon_id = db_monhoc.ID_Mon WHERE db_bangdiem.Lop_id = '"+result+"' order by Mon_id";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int id_bd = rs.getInt("ID_BD");
                    String tenhs = rs.getString("Ten_HS");
                    String tenlop = rs.getString("Ten_Lop");
                    String tenmon = rs.getString("Ten_Mon");
                    float diem = rs.getFloat("Diem");
                    BangDiem_DTO bd = new BangDiem_DTO(id_bd,tenhs,tenmon,tenlop,diem);
                    list.add(bd);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    public BangDiem_DTO select_by_id(String result)
    {
        //ArrayList<BangDiem_DTO> list = new ArrayList<BangDiem_DTO>();
        BangDiem_DTO bd = null;
        try
        {
            String sql = "select * from db_bangdiem WHERE ID_BD = '"+result+"'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int id_bd = rs.getInt("ID_BD");
                    String tenmon = rs.getString("Mon_id");
                    String tenhs = rs.getString("HS_id");
                    String tenlop = rs.getString("Lop_id");
                    float diem = rs.getFloat("Diem");
                    bd = new BangDiem_DTO(id_bd,tenhs,tenmon,tenlop,diem);
                }
                
            }
        }catch(Exception e){ System.out.print(e);}
        return bd;
    }
    
    public boolean insert(BangDiem_DTO bd)
    {
        String sql = "insert into db_bangdiem (Mon_id,HS_id,Lop_id,Diem)\n" +
"values ('"+bd.getMon_id()+"','"+bd.getHS_id()+"','"+bd.getLop_id()+"','"+bd.getDiem()+"');";
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
    
    public boolean Delete(String mabd) {
        try {
            String delete = "DELETE FROM db_bangdiem WHERE ID_BD='" + mabd + "'";
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
    public boolean Update(BangDiem_DTO bd)
    {
        try {
            String delete ="UPDATE db_bangdiem SET Mon_id='"+bd.getMon_id()+"',HS_id='"+bd.getHS_id()+"',Lop_id='"+bd.getLop_id()+"',Diem='"+bd.getDiem()+"' where ID_BD = '"+bd.getBD_ID()+"'";
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
