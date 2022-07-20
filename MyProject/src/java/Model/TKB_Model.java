/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DTO.TKB_DTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author TiT_TM
 */
public class TKB_Model {
    Database db = new Database();
    Statement stm;
    public ArrayList<TKB_DTO> get_all()
    {
        ArrayList<TKB_DTO> list = new ArrayList<TKB_DTO>();
        try
        {
            String sql = "select ID_TKB, NgayHoc,Buoi_day,Ten_Mon,Ten_HS from db_tkb inner join db_monhoc on db_tkb.Mon_id=db_monhoc.ID_Mon inner join db_hocsinh on db_tkb.HS_id = db_hocsinh.ID_HS;";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int id_tkb = rs.getInt("ID_TKB");
                    String NgayHoc = rs.getString("NgayHoc");
                    String buoiday = rs.getString("Buoi_day");
                    String tenmon = rs.getString("Ten_Mon");
                    String tengv = rs.getString("Ten_HS");
                    TKB_DTO tkb = new TKB_DTO(id_tkb,NgayHoc,buoiday,tenmon,tengv);
                    list.add(tkb);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    
    
    
    
    public ArrayList<TKB_DTO> get_by_id(String result)
    {
        ArrayList<TKB_DTO> list = new ArrayList<TKB_DTO>();
        try
        {
 String sql = "select ID_TKB, NgayHoc,Buoi_day,Ten_Mon,Ten_HS from db_tkb inner join db_monhoc on db_tkb.Mon_id=db_monhoc.ID_Mon inner join db_hocsinh on db_tkb.HS_id = db_hocsinh.ID_HS where HS_id = '"+result+"'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int id_tkb = rs.getInt("ID_TKB");
                    String NgayHoc = rs.getString("NgayHoc");
                    String buoiday = rs.getString("Buoi_day");
                    String tenmon = rs.getString("Ten_Mon");
                    String tengv = rs.getString("Ten_HS");
                    TKB_DTO tkb = new TKB_DTO(id_tkb,NgayHoc,buoiday,tenmon,tengv);
                    list.add(tkb);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    
    public ArrayList<TKB_DTO> watch(String result)
    {
        //ArrayList<TKB_DTO> list = new ArrayList<TKB_DTO>();
        ArrayList<TKB_DTO> list = new ArrayList<TKB_DTO>();
        try
        {
            String sql = "select ID_TKB, NgayHoc,Buoi_Day,Ten_Mon,Ten_GV from db_tkb inner join db_monhoc on db_tkb.Mon_id=db_monhoc.ID_Mon inner join db_giaovien on db_tkb.HS_id = db_giaovien.ID_GV Where HS_id ='"+result+"'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int id_tkb = rs.getInt("ID_TKB");
                    String NgayHoc = rs.getString("NgayHoc");
                    String buoiday = rs.getString("Buoi_Day");
                    String tenmon = rs.getString("Ten_Mon");
                    String tengv = rs.getString("Ten_GV");
                   TKB_DTO tkb = new TKB_DTO(id_tkb,NgayHoc,buoiday,tenmon,tengv);
                    list.add(tkb);
                }
                
            }
        }catch(Exception e){ System.out.print(e);}
        return list;
    }
    
    public TKB_DTO select_by_id(String result)
    {
        //ArrayList<TKB_DTO> list = new ArrayList<TKB_DTO>();
        TKB_DTO tkb = null;
        try
        {
            String sql = "select ID_TKB, NgayHoc,Buoi_Day,Mon_id,HS_id from db_tkb inner join db_monhoc on db_tkb.Mon_id=db_monhoc.ID_Mon inner join db_hocsinh on db_tkb.HS_id = db_hocsinh.ID_HS where ID_TKB = '"+result+"'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int id_tkb = rs.getInt("ID_TKB");
                    String NgayHoc = rs.getString("NgayHoc");
                    String buoiday = rs.getString("Buoi_Day");
                    String tenmon = rs.getString("Mon_id");
                    String tengv = rs.getString("HS_id");
                    tkb = new TKB_DTO(id_tkb,NgayHoc,buoiday,tenmon,tengv);
                }
                
            }
        }catch(Exception e){ System.out.print(e);}
        return tkb;
    }
    
    public boolean insert(TKB_DTO tkb)
    {
        String sql = "insert into db_tkb (NgayHoc,Mon_id,Buoi_Day,HS_id) values ('"+tkb.getNgayHoc()+"','"+tkb.getMon_id()+"','"+tkb.getBuoiDay()+"','"+tkb.getHS_id()+"');";
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
    
    public boolean Delete(String matkb) {
        try {
            String delete = "DELETE FROM db_tkb WHERE ID_TKB='" + matkb + "'";
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
    public boolean Update(TKB_DTO tkb)
    {
        try {
            String delete ="UPDATE db_tkb SET NgayHoc='"+tkb.getNgayHoc()+"',Mon_id='"+tkb.getMon_id()+"',Buoi_Day='"+tkb.getBuoiDay()+"',HS_id='"+tkb.getHS_id()+"' where ID_tkb = '"+tkb.getTKB_ID()+"'";
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
