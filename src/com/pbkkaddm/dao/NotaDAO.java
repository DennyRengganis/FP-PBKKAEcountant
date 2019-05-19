package com.pbkkaddm.dao;

import java.util.List;

import com.pbkkaddm.entity.Nota;

public interface NotaDAO {

	
	public List<Nota> getNotas();
	
	public Nota getNota(int notaId);
	
}
