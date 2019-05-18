package com.pbkkaddm.dao;

import java.util.List;

import com.pbkkaddm.entity.Pemasukan;;

public interface PemasukanDAO {
	
	public List<Pemasukan> getPemasukans();
	
	public Pemasukan getPemasukan(int pemasukanId);
}
