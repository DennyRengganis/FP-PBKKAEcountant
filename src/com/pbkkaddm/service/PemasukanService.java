package com.pbkkaddm.service;

import java.util.List;

import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;

public interface PemasukanService {
	public List<Pemasukan> getPemasukans();
	
	public List<Nota> getNotas();
	
}
