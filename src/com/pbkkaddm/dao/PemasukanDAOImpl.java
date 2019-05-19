package com.pbkkaddm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;

@Repository
public class PemasukanDAOImpl implements PemasukanDAO {

	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public List<Pemasukan> getPemasukans() {
		
		// Get Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		List<Pemasukan> pemasukans = currentSession.createQuery("from Pemasukan")
									.getResultList();
		
		return pemasukans;
	}
	@Override
	public List<Nota> getNotas(){
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		List<Nota> notas = currentSession.createQuery("from Nota")
									.getResultList();
		
		return notas;
	}

	@Override
	public Pemasukan getPemasukan(int pemasukanId) {
		
		// Get Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		Pemasukan pemasukan = currentSession.get(Pemasukan.class, pemasukanId);
		
		return pemasukan;
	}
	
	@Override
	public Nota getNota(int notaId) {
		// Get Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		Nota nota = currentSession.get(Nota.class, notaId);
		
		return nota;
	}
	
	@Override
	public void savePemasukan(Pemasukan pemasukan) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the customer ... finally LOL
		currentSession.save(pemasukan);
		
	}
	
}
