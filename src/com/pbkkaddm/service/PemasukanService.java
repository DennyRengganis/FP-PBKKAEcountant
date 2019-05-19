package com.pbkkaddm.service;

import java.util.List;

import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;
import com.pbkkaddm.entity.User;

public interface PemasukanService {
	public List<Pemasukan> getPemasukans();
	
	public List<Nota> getNotas();
	public void savePemasukan(Pemasukan pemasukan);
	public void updatePemasukan(Pemasukan pemasukan);

	public void saveNota(Nota nota);
	public Pemasukan getPemasukan(int pemasukanId);

	public void saveUser(User user);
	public Nota getNota(int notaId);

	public void updateNota(Nota nota);

	public void deletePemasukan(int theId);

	public void deleteNota(int theId);
	
}
