/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author TiT_TM
 */
public class BangDiem_DTO {
    private int BD_ID;
     private String HS_id;
     private String Mon_id;
     private String Lop_id;
     private float Diem;
     
     
     public BangDiem_DTO(){}
     public BangDiem_DTO(int idbd, String idhs,String idmon, String idlop, float diem)
     {
         BD_ID = idbd;
         HS_id = idhs;
         Mon_id = idmon;
         Lop_id = idlop;
         Diem = diem;
     }
     
     
    /**
     * @return the BD_ID
     */
    public int getBD_ID() {
        return BD_ID;
    }

    /**
     * @param BD_ID the BD_ID to set
     */
    public void setBD_ID(int BD_ID) {
        this.BD_ID = BD_ID;
    }

    /**
     * @return the HS_id
     */
    public String getHS_id() {
        return HS_id;
    }

    /**
     * @param HS_id the HS_id to set
     */
    public void setHS_id(String HS_id) {
        this.HS_id = HS_id;
    }

    /**
     * @return the Mon_id
     */
    public String getMon_id() {
        return Mon_id;
    }

    /**
     * @param Mon_id the Mon_id to set
     */
    public void setMon_id(String Mon_id) {
        this.Mon_id = Mon_id;
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

    /**
     * @return the Diem
     */
    public float getDiem() {
        return Diem;
    }

    /**
     * @param Diem the Diem to set
     */
    public void setDiem(float Diem) {
        this.Diem = Diem;
    }
}
