package com.pbkkaddm.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pbkkaddm.entity.Karyawan;

@Repository
public class KaryawanDAOImpl implements KaryawanDAO {
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public List<Karyawan> getKaryawans() {
		
		// Get Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		List<Karyawan> karyawans = currentSession.createQuery("from Karyawan")
									.getResultList();
		
		return karyawans;
	}
	@Override
	public Karyawan getKaryawan(int karyawanId) {
		
		// Get Session
		Session currentSession = sessionFactory.getCurrentSession();
		
		// Query
		Karyawan karyawan = currentSession.get(Karyawan.class, karyawanId);
		
		return karyawan;
	}
}
