package com.pbkkaddm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pbkkaddm.dao.PemasukanDAO;
import com.pbkkaddm.entity.Pemasukan;

@Service
public class PemasukanServiceImpl implements PemasukanService {

	@Autowired
	private PemasukanDAO pemasukanDAO;
	
	@Override
	@Transactional
	public List<Pemasukan> getPemasukans() {
		// TODO Auto-generated method stub
		return pemasukanDAO.getPemasukans();
	}

}
