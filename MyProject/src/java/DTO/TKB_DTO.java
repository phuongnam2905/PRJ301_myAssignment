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
public class TKB_DTO {
     private int TKB_ID;
     private String NgayHoc;
     private String Mon_id;
     private String BuoiDay;
     private String HS_id;
     
     public TKB_DTO(){}
     public TKB_DTO(int id_tkb,String nd,String bd,String id_mon,String id_gv)
     {
         TKB_ID = id_tkb;
         NgayHoc = nd;
         Mon_id = id_mon;
         BuoiDay = bd;
         HS_id = id_gv;
     }

    /**
     * @return the TKB_ID
     */
    public int getTKB_ID() {
        return TKB_ID;
    }

    /**
     * @param TKB_ID the TKB_ID to set
     */
    public void setTKB_ID(int TKB_ID) {
        this.TKB_ID = TKB_ID;
    }

    /**
     * @return the NgayHoc
     */
    public String getNgayHoc() {
        return NgayHoc;
    }

    /**
     * @param NgayHoc the NgayHoc to set
     */
    public void setNgayHoc(String NgayHoc) {
        this.NgayHoc = NgayHoc;
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
     * @return the BuoiDay
     */
    public String getBuoiDay() {
        return BuoiDay;
    }

    /**
     * @param BuoiDay the BuoiDay to set
     */
    public void setBuoiDay(String BuoiDay) {
        this.BuoiDay = BuoiDay;
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
}
