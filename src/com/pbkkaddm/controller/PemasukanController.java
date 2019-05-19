package com.pbkkaddm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;
import com.pbkkaddm.service.PemasukanService;



@Controller
@RequestMapping("/transaksi")
public class PemasukanController {
	
	@Autowired
	private PemasukanService pemasukanService;
	
	
	@GetMapping("list")
	public String list(Model model) {
		
		// Query using DAO
		List<Pemasukan> pemasukans = pemasukanService.getPemasukans();
		List<Nota> notas = pemasukanService.getNotas();
		
		// Add to model
		model.addAttribute("pemasukans", pemasukans);
		model.addAttribute("notas", notas);
		
	
		
		return "transaksi/list";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute to bind form data
		Pemasukan pemasukan = new Pemasukan();
		
		theModel.addAttribute("pemasukan", pemasukan);
		
		return "transaksi/customer-form";
	}
	
	@PostMapping("/savePemasukan")
	public String savePemasukan(@ModelAttribute("pemasukan") Pemasukan pemasukan) {
		
		// save the customer using our service
		pemasukanService.savePemasukan(pemasukan);
		
		
		return "transaksi/list";
	}
	

}
