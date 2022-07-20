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
public class HocSinh_Model {
     Database db = new Database();
    Statement stm;
    
    public boolean EditPass(HocSinh_DTO hs)
    {
        try {
            String delete ="UPDATE db_hocsinh SET MatKhau='"+hs.getMatKhau()+"' where ID_GV = '"+hs.getID_HS()+"'";

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
    
    public HocSinh_DTO login(String username, String password)
    {
        //ArrayList<HocSinh_DTO> list = new ArrayList<HocSinh_DTO>();
        HocSinh_DTO hs = null;
        try
        {
            String sql = "SELECT * FROM db_hocsinh WHERE TaiKhoan = '"+username+"' and MatKhau = '"+password+"'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            while(rs.next())
                {
                    int mahs = rs.getInt("ID_HS");
                    String tenhs = rs.getString("Ten_HS");
                    String sdt = rs.getString("SDT");
                    String diachi = rs.getString("DiaChi");
                    String taikhoan = rs.getString("TaiKhoan");
                    String matkhau = rs.getString("MatKhau");
                    Date ngaysinh = rs.getDate("NgaySinh");
                    int capdo = Integer.parseInt(rs.getString("CapDo"));
                    float dtb = Float.parseFloat(rs.getString("DiemTB"));
                    String lop = rs.getString("Lop_id");
                    hs = new HocSinh_DTO(mahs,tenhs,sdt,diachi,taikhoan,matkhau,ngaysinh,capdo,dtb,lop);
                }
            return hs;
        }catch(Exception e){ System.out.print(e);return null;}
        
    }
    
    
    public ArrayList<HocSinh_DTO> get_all()
    {
        ArrayList<HocSinh_DTO> list = new ArrayList<HocSinh_DTO>();
        try
        {
            String sql = "SELECT * FROM db_hocsinh";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int mahs = rs.getInt("ID_HS");
                    String tenhs = rs.getString("Ten_HS");
                    String sdt = rs.getString("SDT");
                    String diachi = rs.getString("DiaChi");
                    String taikhoan = rs.getString("TaiKhoan");
                    String matkhau = rs.getString("MatKhau");
                    Date ngaysinh = rs.getDate("NgaySinh");
                    int capdo = Integer.parseInt(rs.getString("CapDo"));
                    float dtb = Float.parseFloat(rs.getString("DiemTB"));
                    String lop = rs.getString("Lop_id");
                     HocSinh_DTO hs = new HocSinh_DTO(mahs,tenhs,sdt,diachi,taikhoan,matkhau,ngaysinh,capdo,dtb,lop);
                    list.add(hs);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    
    public ArrayList<HocSinh_DTO> get_by_id(String result)
    {
        ArrayList<HocSinh_DTO> list = new ArrayList<HocSinh_DTO>();
        try
        {
            String sql = "SELECT * FROM db_hocsinh WHERE ID_HS like  '%"+result+"%' or Ten_HS like '%"+result+"%'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int mahs = rs.getInt("ID_HS");
                    String tenhs = rs.getString("Ten_HS");
                    String sdt = rs.getString("SDT");
                    String diachi = rs.getString("DiaChi");
                    String taikhoan = rs.getString("TaiKhoan");
                    String matkhau = rs.getString("MatKhau");
                    Date ngaysinh = rs.getDate("NgaySinh");
                    int capdo = Integer.parseInt(rs.getString("CapDo"));
                    float dtb = Float.parseFloat(rs.getString("DiemTB"));
                    String lop = rs.getString("Lop_id");
                     HocSinh_DTO hs = new HocSinh_DTO(mahs,tenhs,sdt,diachi,taikhoan,matkhau,ngaysinh,capdo,dtb,lop);
                    list.add(hs);
                }
                return list;
            }
        }catch(Exception e){ System.out.print(e);}
        return null;
    }
    
    public HocSinh_DTO select_by_id(String result)
    {
        //ArrayList<HocSinh_DTO> list = new ArrayList<HocSinh_DTO>();
        HocSinh_DTO hs = null;
        try
        {
            String sql = "SELECT * FROM db_hocsinh WHERE ID_HS = '"+result+"'";
            db.connect();
            stm = db.getConn().createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if(rs==null)
                return null;
            else
            {
                while(rs.next())
                {
                    int mahs = rs.getInt("ID_HS");
                    String tenhs = rs.getString("Ten_HS");
                    String sdt = rs.getString("SDT");
                    String diachi = rs.getString("DiaChi");
                    String taikhoan = rs.getString("TaiKhoan");
                    String matkhau = rs.getString("MatKhau");
                    Date ngaysinh = rs.getDate("NgaySinh");
                    int capdo = Integer.parseInt(rs.getString("CapDo"));
                    float dtb = Float.parseFloat(rs.getString("DiemTB"));
                    String lop = rs.getString("Lop_id");
                      hs = new HocSinh_DTO(mahs,tenhs,sdt,diachi,taikhoan,matkhau,ngaysinh,capdo,dtb,lop);
                    
                }
                
            }
        }catch(Exception e){ System.out.print(e);}
        return hs;
    }
    
    public boolean insert(HocSinh_DTO hs)
    {
        String sql = "insert into db_hocsinh(Ten_HS,SDT,DiaChi,TaiKhoan,MatKhau,NgaySinh,CapDo,DiemTB,Lop_id)\n" +
"values ('"+hs.getTenHS()+"','"+hs.getSDT()+"','"+hs.getDiaChi()+"','"+hs.getTaiKhoan()+"','"+hs.getMatKhau()+"','"+hs.getNgaySinh()+"','"+hs.getCapDo()+"','"+hs.getDTB()+"','"+hs.getLop_id()+"')";
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
    
    public boolean Delete(String mahs) {
        try {
            String delete = "DELETE FROM db_hocsinh WHERE ID_HS='" + mahs + "'";
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
    public boolean Update(HocSinh_DTO hs)
    {
        try {
            String delete ="UPDATE db_hocsinh SET Ten_HS='"+hs.getTenHS()+"',SDT='"+hs.getSDT()+"',DiaChi='"+hs.getDiaChi()+"',TaiKhoan='"+hs.getTaiKhoan()+"',MatKhau='"+hs.getMatKhau()+"',CapDo='"+hs .getCapDo()+"' ,NgaySinh='"+hs.getNgaySinh()+"',DiemTB='"+hs.getDTB()+"',Lop_id='"+hs.getLop_id()+"' where ID_HS = '"+hs.getID_HS()+"'";
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
    
    
    

