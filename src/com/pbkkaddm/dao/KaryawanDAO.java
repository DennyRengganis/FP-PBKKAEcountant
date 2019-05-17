package com.pbkkaddm.dao;

import java.util.List;

import com.pbkkaddm.entity.Karyawan;;

public interface KaryawanDAO {
	public List<Karyawan> getKaryawans();
	
	public Karyawan getKaryawan(int karyawanId);
}
