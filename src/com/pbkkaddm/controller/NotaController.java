package com.pbkkaddm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.service.NotaService;

@Controller
@RequestMapping("/transaksi")
public class NotaController {
	
	@Autowired
	private NotaService notaService;
	
	@GetMapping("list")
	public String list(Model model) {
		
		// Query using DAO
		List<Nota> notas = notaService.getNotas();
		
		// Add to model
		model.addAttribute("notas", notas);
		
		return null;
	}
	
}
