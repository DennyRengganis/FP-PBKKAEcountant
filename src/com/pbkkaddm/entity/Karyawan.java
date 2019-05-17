package com.pbkkaddm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="karyawan")
public class Karyawan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="K_ID")
	private int id;
	
	@Column(name="K_NAMA")
	private String nama;
	
	@Column(name="K_ALAMAT")
	private String alamat;
	
	@Column(name="K_BAGIAN")
	private String bagian;
	
	public Karyawan() {
		
	}
	
	public Karyawan(String nama,String alamat,String bagian) {
		this.setNama(nama);
		this.setAlamat(alamat);
		this.setBagian(bagian);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public String getBagian() {
		return bagian;
	}

	public void setBagian(String bagian) {
		this.bagian = bagian;
	}
	
	@Override
	public String toString() {
		return "Karyawan [id=" + id + ", Nama=" + nama + ", Alamat=" + alamat + ", Bagian=" + bagian + "]";
	}
}
