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
public class Lop_DTO {
    private int Lop_ID;
    private String TenLop;
    private int SiSo;
    public Lop_DTO(){}
    public Lop_DTO(int id,String ten,int ss){Lop_ID = id;TenLop = ten;SiSo=ss;}

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
     * @return the TenLop
     */
    public String getTenLop() {
        return TenLop;
    }

    /**
     * @param TenLop the TenLop to set
     */
    public void setTenLop(String TenLop) {
        this.TenLop = TenLop;
    }

    /**
     * @return the SiSo
     */
    public int getSiSo() {
        return SiSo;
    }

    /**
     * @param SiSo the SiSo to set
     */
    public void setSiSo(int SiSo) {
        this.SiSo = SiSo;
    }
}
