package com.pbkkaddm.dao;

import java.util.List;

import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;
import com.pbkkaddm.entity.User;;

public interface PemasukanDAO {
	
	public List<Pemasukan> getPemasukans();
	
	public Pemasukan getPemasukan(int pemasukanId);
	
	public List<Nota> getNotas();
	
	public Nota getNota(int notaID);

	public void savePemasukan(Pemasukan pemasukan);
	public void updatePemasukan(Pemasukan pemasukan);

	public void saveNota(Nota nota);
	public void saveUser(User user);

	public void updateNota(Nota nota);

	public void deletePemasukan(int theId);

	public void deleteNota(int theId);

	public List<Nota> getNotasJan();
	
}
