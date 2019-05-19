package com.pbkkaddm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pbkkaddm.dao.PemasukanDAO;
import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;

@Service
public class PemasukanServiceImpl implements PemasukanService {

	@Autowired
	private PemasukanDAO pemasukanDAO;
	
	@Override
	@Transactional
	public List<Pemasukan> getPemasukans() {
		return pemasukanDAO.getPemasukans();
	}

	@Override
	@Transactional
	public List<Nota> getNotas() {
		return pemasukanDAO.getNotas();
	}
	
	@Override
	@Transactional
	public void savePemasukan(Pemasukan pemasukan) {

		pemasukanDAO.savePemasukan(pemasukan);
	}
	
	@Override
	@Transactional
	public void saveNota(Nota nota) {

		pemasukanDAO.saveNota(nota);
	}

	@Override
	@Transactional
	public Pemasukan getPemasukan(int pemasukanId) {
		// TODO Auto-generated method stub
		return pemasukanDAO.getPemasukan(pemasukanId);
	}
 

}
