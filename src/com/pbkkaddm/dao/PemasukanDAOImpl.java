package com.pbkkaddm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;
import com.pbkkaddm.entity.User;

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
	
	@Override
	public void saveNota(Nota nota) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the customer ... finally LOL
		currentSession.save(nota);
		
	}
	
	@Override
	public void saveUser(User user) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the customer ... finally LOL
		currentSession.save(user);
		
	}
	
	@Override
	public void updatePemasukan(Pemasukan pemasukan) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the customer ... finally LOL
		currentSession.update(pemasukan);
		
	}
	
	@Override
	public void updateNota(Nota nota) {

		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// save the customer ... finally LOL
		currentSession.update(nota);
		
	}
	@Override
	public void deletePemasukan(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = currentSession.createQuery("delete from Pemasukan where id=:pemasukanId");
		theQuery.setParameter("pemasukanId",theId);
		theQuery.executeUpdate();
	}
	@Override
	public void deleteNota(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = currentSession.createQuery("delete from Nota where id=:notaId");
		theQuery.setParameter("notaId",theId);
		theQuery.executeUpdate();
	}
}
