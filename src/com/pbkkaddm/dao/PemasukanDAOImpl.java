package com.pbkkaddm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public Pemasukan getPemasukan(int pemasukanId) {
		
		// Get Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		Pemasukan pemasukan = currentSession.get(Pemasukan.class, pemasukanId);
		
		return pemasukan;
	}
	
}
