package com.pbkkaddm.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pbkkaddm.dao.KaryawanDAO;
import com.pbkkaddm.entity.Karyawan;

@Controller
@RequestMapping("/karyawan")
public class KaryawanController {
	
	@Autowired
	private KaryawanDAO karyawanDAO;
	
	@RequestMapping("list")
	public String list(Model model) {
		
		// Query using DAO
		List<Karyawan> karyawans = karyawanDAO.getKaryawans();
		
		// Add to model
		model.addAttribute("karyawans", karyawans);
		
		return "karyawan/list";
	}

	
}
