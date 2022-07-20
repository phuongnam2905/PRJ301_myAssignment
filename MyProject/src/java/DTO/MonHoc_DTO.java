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
public class MonHoc_DTO {
    private int Mon_ID;
    private String TenMon;
    
    public MonHoc_DTO(){}
    public MonHoc_DTO(int id,String ten){Mon_ID = id;TenMon = ten;}

    /**
     * @return the Mon_ID
     */
    public int getMon_ID() {
        return Mon_ID;
    }

    /**
     * @param Mon_ID the Mon_ID to set
     */
    public void setMon_ID(int Mon_ID) {
        this.Mon_ID = Mon_ID;
    }

    /**
     * @return the TenMon
     */
    public String getTenMon() {
        return TenMon;
    }

    /**
     * @param TenMon the TenMon to set
     */
    public void setTenMon(String TenMon) {
        this.TenMon = TenMon;
    }
}
