package com.pbkkaddm.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pbkkaddm.dao.KaryawanDAO;
import com.pbkkaddm.entity.Karyawan;
import com.pbkkaddm.service.KaryawanService;

@Controller
@RequestMapping("/karyawan")
public class KaryawanController {
	
	@Autowired
	private KaryawanService	 karyawanService;
	
	@GetMapping("list")
	public String list(Model model) {
		
		// Query using DAO
		List<Karyawan> karyawans = karyawanService.getKaryawans();
		
		// Add to model
		model.addAttribute("karyawans", karyawans);
		
		return "karyawan/list";
	}

	
}
