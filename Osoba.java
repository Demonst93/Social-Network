/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author User
 */
@Entity
@Table(name = "osoba")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Osoba.findAll", query = "SELECT o FROM Osoba o")
    , @NamedQuery(name = "Osoba.findByOsbId", query = "SELECT o FROM Osoba o WHERE o.osbId = :osbId")
    , @NamedQuery(name = "Osoba.findByOsbIme", query = "SELECT o FROM Osoba o WHERE o.osbIme = :osbIme")
    , @NamedQuery(name = "Osoba.findByOsbPrezime", query = "SELECT o FROM Osoba o WHERE o.osbPrezime = :osbPrezime")
    , @NamedQuery(name = "Osoba.findByOsbGodine", query = "SELECT o FROM Osoba o WHERE o.osbGodine = :osbGodine")
    , @NamedQuery(name = "Osoba.findByOsbPol", query = "SELECT o FROM Osoba o WHERE o.osbPol = :osbPol")
    , @NamedQuery(name = "Osoba.findByPrsFriends", query = "SELECT o FROM Osoba o WHERE o.prsFriends = :prsFriends")})
public class Osoba implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "osb_id")
    private Integer osbId;
    @Column(name = "osb_ime")
    private String osbIme;
    @Column(name = "osb_prezime")
    private String osbPrezime;
    @Column(name = "osb_godine")
    private Integer osbGodine;
    @Column(name = "osb_pol")
    private String osbPol;
    @Column(name = "prs_friends")
    private String prsFriends;

    public Osoba() {
    }

    public Osoba(Integer osbId) {
        this.osbId = osbId;
    }

    public Integer getOsbId() {
        return osbId;
    }

    public void setOsbId(Integer osbId) {
        this.osbId = osbId;
    }

    public String getOsbIme() {
        return osbIme;
    }

    public void setOsbIme(String osbIme) {
        this.osbIme = osbIme;
    }

    public String getOsbPrezime() {
        return osbPrezime;
    }

    public void setOsbPrezime(String osbPrezime) {
        this.osbPrezime = osbPrezime;
    }

    public Integer getOsbGodine() {
        return osbGodine;
    }

    public void setOsbGodine(Integer osbGodine) {
        this.osbGodine = osbGodine;
    }

    public String getOsbPol() {
        return osbPol;
    }

    public void setOsbPol(String osbPol) {
        this.osbPol = osbPol;
    }

    public String getPrsFriends() {
        return prsFriends;
    }

    public void setPrsFriends(String prsFriends) {
        this.prsFriends = prsFriends;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (osbId != null ? osbId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Osoba)) {
            return false;
        }
        Osoba other = (Osoba) object;
        if ((this.osbId == null && other.osbId != null) || (this.osbId != null && !this.osbId.equals(other.osbId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return  " " + " "+ osbPrezime + ", godine:" +   osbGodine + " "+ osbPol + ", "+ prsFriends;
    }

    
    
    
}
