package com.pbkkaddm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pbkkaddm.dao.PemasukanDAO;
import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;
import com.pbkkaddm.entity.User;

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
	public void saveUser(User user) {

		pemasukanDAO.saveUser(user);
	}

	@Override
	@Transactional
	public Pemasukan getPemasukan(int pemasukanId) {
		// TODO Auto-generated method stub
		return pemasukanDAO.getPemasukan(pemasukanId);
	}
 
	@Override
	@Transactional
	public void updatePemasukan(Pemasukan pemasukan) {

		pemasukanDAO.updatePemasukan(pemasukan);
	}
	
	@Override
	@Transactional
	public Nota getNota(int notaId) {
		// TODO Auto-generated method stub
		return pemasukanDAO.getNota(notaId);
	}
	@Override
	@Transactional
	public void updateNota(Nota nota) {

		pemasukanDAO.updateNota(nota);
	}

	@Override
	@Transactional
	public void deletePemasukan(int theId) {
		pemasukanDAO.deletePemasukan(theId);
	}

	@Override
	@Transactional
	public void deleteNota(int theId) {
		// TODO Auto-generated method stub
		pemasukanDAO.deleteNota(theId);
	}

	@Override
	@Transactional
	public List<Nota> getNotasJan() {
		return pemasukanDAO.getNotasJan();
	}

	@Override
	@Transactional
	public List<Pemasukan> getPemasukansJan() {
		
		return pemasukanDAO.getPemasukansJan();
	}

	@Override
	@Transactional
	public List<Pemasukan> getPemasukansFeb() {
		return pemasukanDAO.getPemasukansFeb();
	}

	@Override
	@Transactional
	public List<Nota> getNotasFeb() {
		return pemasukanDAO.getNotasFeb();
	}


	
}
