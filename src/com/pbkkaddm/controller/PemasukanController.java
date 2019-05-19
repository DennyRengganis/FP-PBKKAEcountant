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
	
	@GetMapping("/showFormForAddNota")
	public String showFormForAddNota(Model theModel) {
		
		// create model attribute to bind form data
		Nota nota = new Nota();
		
		theModel.addAttribute("nota", nota);
		
		return "transaksi/customer-form";
	}
	@PostMapping("/savePemasukan")
	public String savePemasukan(@ModelAttribute("pemasukan") Pemasukan pemasukan) {
		
		// save the customer using our service
		pemasukanService.savePemasukan(pemasukan);
		
		
		return "redirect:showFormForAdd";
	}
	
	
	@PostMapping("/saveNota")
	public String saveNota(@ModelAttribute("nota") Nota nota) {
		
		// save the customer using our service
		pemasukanService.saveNota(nota);
		
		
		return "redirect:showFormForAdd";
	}
	
	
	@GetMapping("/pembukuan")
	public String jumlahSemua(Model model) {
		List<Pemasukan> pemasukans = pemasukanService.getPemasukans();
		List<Nota> notas = pemasukanService.getNotas();
		int jumlah=0;
		int jumlah2=0;
		int jumlah3;
		for(Pemasukan i: pemasukans) {
			int tmp=i.getTotal();
			jumlah+=tmp;
		}
		for(Nota j: notas) {
			int tmp2=j.getNharga();
			jumlah2+=tmp2;
		}
		jumlah3=jumlah - jumlah2;
		model.addAttribute("jumlah",jumlah);
		model.addAttribute("jumlah2",jumlah2);
		model.addAttribute("jumlah3",jumlah3);
		return "transaksi/pembukuan";
	}

}
