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
public class DSLop_DTO {
    private int Lop_ID;
    private int GV_ID;
    
    public DSLop_DTO(){}
    public DSLop_DTO(int id_lop, int id_gv){Lop_ID = id_lop;GV_ID = id_gv;}

    /**
     * @return the Lop_ID
     */
    public int getLop_ID() {
        return Lop_ID;
    }

    /**
     * @param Lop_ID the Lop_ID to set
     */
    public void setLop_ID(int Lop_ID) {
        this.Lop_ID = Lop_ID;
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
