package com.pbkkaddm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="nota")
public class Nota {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="N_NO")
	private int nid;
	
	@Column(name="N_TGL")
	private String ntanggal;
	
	@Column(name="N_KEPERLUAN")
	private String nkeperluan;
	
	@Column(name="N_CATATAN")
	private String ncatatan;
	
	@Column(name="NAMA_BARANG")
	private String nnama;
	
	@Column(name="HARGA_BARANG")
	private int nharga;
	
	public Nota() {
		
	}
	
	public Nota(String Ntanggal, String Nkeperluan, String Ncatatan, String Nnama, int Nharga ) {
		this.setNtanggal(Ntanggal);
		this.setNkeperluan(Nkeperluan);
		this.setNcatatan(Ncatatan);
		this.setNnama(Nnama);
		this.setNharga(nharga);
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}

	public String getNtanggal() {
		return ntanggal;
	}

	public void setNtanggal(String ntanggal) {
		this.ntanggal = ntanggal;
	}

	public String getNkeperluan() {
		return nkeperluan;
	}

	public void setNkeperluan(String nkeperluan) {
		this.nkeperluan = nkeperluan;
	}

	public String getNcatatan() {
		return ncatatan;
	}

	public void setNcatatan(String ncatatan) {
		this.ncatatan = ncatatan;
	}

	public String getNnama() {
		return nnama;
	}

	public void setNnama(String nnama) {
		this.nnama = nnama;
	}

	public int getNharga() {
		return nharga;
	}

	public void setNharga(int nharga) {
		this.nharga = nharga;
	}
	
}
