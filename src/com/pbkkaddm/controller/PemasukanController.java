package com.pbkkaddm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pbkkaddm.dao.PemasukanDAO;
import com.pbkkaddm.entity.Pemasukan;
import com.pbkkaddm.service.PemasukanService;



@Controller
@RequestMapping("/pemasukan")
public class PemasukanController {
	
	@Autowired
	private PemasukanService pemasukanService;
	
	@GetMapping("list")
	public String list(Model model) {
		
		// Query using DAO
		List<Pemasukan> pemasukans = pemasukanService.getPemasukans();
		
		// Add to model
		model.addAttribute("pemasukans", pemasukans);
		
		return "pemasukan/list";
	}

}
