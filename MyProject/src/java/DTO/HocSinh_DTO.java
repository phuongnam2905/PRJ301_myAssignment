/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.sql.Date;

/**
 *
 * @author TiT_TM
 */
public class HocSinh_DTO {
    private int ID_HS;
    private String TenHS;
    private Date NgaySinh;
    
    private float DTB;
    private String Lop_id;
    


    private String SDT;
    private String DiaChi;
    private String TaiKhoan;
    private String MatKhau;
    private int CapDo;
    public HocSinh_DTO(){}
    public HocSinh_DTO(int id_hs, String ten,String sdt,String dc,String tk,String mk,Date ns,int cd,float dtb,String id_lop)
    {
           ID_HS = id_hs;
         TenHS = ten;
          SDT= sdt;
          DiaChi= dc;
          TaiKhoan= tk;
          MatKhau= mk;
          CapDo= cd;
          
        NgaySinh = ns;
        DiaChi = dc;
        DTB = dtb;
        Lop_id = id_lop;
    }
    /**
     * @return the ID_GV
     */
    
    /**
     * @return the SDT
     */
    public String getSDT() {
        return SDT;
    }

    /**
     * @param SDT the SDT to set
     */
    public void setSDT(String SDT) {
        this.SDT = SDT;
    }

    /**
     * @return the DiaChi
     */
    public String getDiaChi() {
        return DiaChi;
    }

    /**
     * @param DiaChi the DiaChi to set
     */
    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    /**
     * @return the TaiKhoan
     */
    public String getTaiKhoan() {
        return TaiKhoan;
    }

    /**
     * @param TaiKhoan the TaiKhoan to set
     */
    public void setTaiKhoan(String TaiKhoan) {
        this.TaiKhoan = TaiKhoan;
    }

    /**
     * @return the MatKhau
     */
    public String getMatKhau() {
        return MatKhau;
    }

    /**
     * @param MatKhau the MatKhau to set
     */
    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }

    /**
     * @return the CapDo
     */
    public int getCapDo() {
        return CapDo;
    }

    /**
     * @param CapDo the CapDo to set
     */
    public void setCapDo(int CapDo) {
        this.CapDo = CapDo;
    }
  
    public int getID_HS() {
        return ID_HS;
    }

    /**
     * @param ID_HS the ID_HS to set
     */
    public void setID_HS(int ID_HS) {
        this.ID_HS = ID_HS;
    }

    /**
     * @return the TenHS
     */
    public String getTenHS() {
        return TenHS;
    }

    /**
     * @param TenHS the TenHS to set
     */
    public void setTenHS(String TenHS) {
        this.TenHS = TenHS;
    }

    /**
     * @return the NgaySinh
     */
    public Date getNgaySinh() {
        return NgaySinh;
    }

    /**
     * @param NgaySinh the NgaySinh to set
     */
    public void setNgaySinh(Date NgaySinh) {
        this.NgaySinh = NgaySinh;
    }



    /**
     * @return the DTB
     */
    public float getDTB() {
        return DTB;
    }

    /**
     * @param DTB the DTB to set
     */
    public void setDTB(float DTB) {
        this.DTB = DTB;
    }

    /**
     * @return the Lop_id
     */
    public String getLop_id() {
        return Lop_id;
    }

    /**
     * @param Lop_id the Lop_id to set
     */
    public void setLop_id(String Lop_id) {
        this.Lop_id = Lop_id;
    }
    
}
