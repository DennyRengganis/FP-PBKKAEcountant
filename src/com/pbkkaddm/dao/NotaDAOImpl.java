package com.pbkkaddm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pbkkaddm.entity.Nota;

@Repository
public class NotaDAOImpl implements NotaDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Nota> getNotas() {
		// Get Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		List<Nota> notas = currentSession.createQuery("from Nota")
									.getResultList();
		
		return notas;
	}

	@Override
	public Nota getNota(int notaId) {
		// Get Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		Nota nota = currentSession.get(Nota.class, notaId);
		
		return nota;
	}

}
