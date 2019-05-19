package com.pbkkaddm.dao;

import java.util.List;

import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;;

public interface PemasukanDAO {
	
	public List<Pemasukan> getPemasukans();
	
	public Pemasukan getPemasukan(int pemasukanId);
	
	public List<Nota> getNotas();
	
	public Nota getNota(int notaID);

	public void savePemasukan(Pemasukan pemasukan);
}
