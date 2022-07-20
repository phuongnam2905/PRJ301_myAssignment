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
public class DSMon_DTO {
    private int Mon_ID;
    private int GV_ID;
    
    public DSMon_DTO(){}
    public DSMon_DTO(int id_mon, int id_gv){Mon_ID = id_mon;GV_ID = id_gv;}

    /**
     * @return the Mon_ID
     */
    public int getMon_ID() {
        return Mon_ID;
    }

    /**
     * @param Mon_ID the Lop_ID to set
     */
    public void setMon_ID(int Mon_ID) {
        this.Mon_ID = Mon_ID;
    }

    /**
     * @return the GV_ID
     */
    public int getGV_ID() {
        return GV_ID;
    }

    /**
     * @param GV_ID the GV_ID to set
     */
    public void setGV_ID(int GV_ID) {
        this.GV_ID = GV_ID;
    }
}
