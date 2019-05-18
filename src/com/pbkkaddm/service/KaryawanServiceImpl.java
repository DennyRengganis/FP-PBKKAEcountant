package com.pbkkaddm.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pbkkaddm.dao.KaryawanDAO;
import com.pbkkaddm.entity.Karyawan;

@Service
public class KaryawanServiceImpl implements KaryawanService {

	@Autowired
	private KaryawanDAO karyawanDAO;
	
	@Override
	@Transactional
	public List<Karyawan> getKaryawans() {

		return karyawanDAO.getKaryawans();
	}

}
