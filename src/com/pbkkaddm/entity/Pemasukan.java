package com.pbkkaddm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pemasukan")
public class Pemasukan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="P_ID")
	private int id;
	
	@Column(name="P_TGL")
	private String tanggal;
	
	@Column(name="P_TOTAL")
	private int total;
	
	@Column(name="P_DARI")
	private String dari;
	
	@Column(name="P_CATATAN")
	private String catatan;
	
	public Pemasukan() {
		
	}
	
	public Pemasukan(String tanggal,int total,String dari, String catatan) {
		this.setTanggal(tanggal);
		this.setTotal(total);
		this.setDari(dari);
		this.setCatatan(catatan);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTanggal() {
		return tanggal;
	}

	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getDari() {
		return dari;
	}

	public void setDari(String dari) {
		this.dari = dari;
	}

	public String getCatatan() {
		return catatan;
	}

	public void setCatatan(String catatan) {
		this.catatan = catatan;
	}
	@Override
	public String toString() {
		return "Pemasukan [id=" + id + ", Tanggal=" + tanggal + ", Total=" + total + ", Dari=" + dari + ",Catatan =" + catatan + " ]";
	}

}
