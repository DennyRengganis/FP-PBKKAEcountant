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
import org.springframework.web.bind.annotation.RequestParam;

import com.pbkkaddm.entity.Nota;
import com.pbkkaddm.entity.Pemasukan;
import com.pbkkaddm.entity.User;
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
		
		return "transaksi/nota";
	}
	
	@GetMapping("/showFormForAddUser")
	public String showFormForAddUser(Model theModel) {
		
		// create model attribute to bind form data
		User user = new User();
		
		theModel.addAttribute("user", user);
		
		return "transaksi/user";
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
	
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User user) {
		
		// save the customer using our service
		pemasukanService.saveUser(user);
		
		
		return "redirect:showFormForAdd";
	}
	
	
	@GetMapping("/pembukuan")
	public String jumlahSemua(Model model) {
		List<Pemasukan> pemasukans = pemasukanService.getPemasukans();
		List<Pemasukan> pemasukansJan = pemasukanService.getPemasukansJan();
		List<Pemasukan> pemasukansFeb = pemasukanService.getPemasukansFeb();
		List<Nota> notas = pemasukanService.getNotas();
		List<Nota> notasJan = pemasukanService.getNotasJan();
		List<Nota> notasFeb = pemasukanService.getNotasFeb();
		
		int jumlah=0;
		int jumlah2=0;
		int jumlah3;
		int jumlahPemJan=0;
		int jumlahNotJan=0;
		int jumlahPemFeb=0;
		int jumlahNotFeb=0;
		int jumlahJan;
		int jumlahFeb;
		for(Pemasukan i: pemasukans) {
			int tmp=i.getTotal();
			jumlah+=tmp;
		}
		for(Nota j: notas) {
			int tmp2=j.getNharga();
			jumlah2+=tmp2;
		}
		for(Pemasukan a: pemasukansJan ) {
			int tmp3=a.getTotal();
			jumlahPemJan+=tmp3;
		}
		for(Nota b: notasJan) {
			int tmp4=b.getNharga();
			jumlahNotJan+=tmp4;
		}
		for(Pemasukan c: pemasukansFeb) {
			int tmp5=c.getTotal();
			jumlahPemFeb+=tmp5;
		}
		for(Nota d: notasFeb) {
			int tmp6=d.getNharga();
			jumlahNotFeb+=tmp6;
		}
		jumlahJan=jumlahPemJan-jumlahNotJan;
		jumlahFeb=jumlahPemFeb-jumlahNotFeb;
		jumlah3=jumlah - jumlah2;
		model.addAttribute("jumlah",jumlah);
		model.addAttribute("jumlah2",jumlah2);
		model.addAttribute("jumlah3",jumlah3);
		model.addAttribute("pemasukans", pemasukans);
		model.addAttribute("notas", notas);
		model.addAttribute("notasJan",notasJan);
		model.addAttribute("notasFeb",notasFeb);
		model.addAttribute("pemasukansJan",pemasukansJan);
		model.addAttribute("pemasukansFeb",pemasukansFeb);
		model.addAttribute("jumlahJan", jumlahJan);
		model.addAttribute("jumlahPemJan", jumlahPemJan);
		model.addAttribute("jumlahPemFeb", jumlahPemFeb);
		model.addAttribute("jumlahNotJan", jumlahNotJan);
		model.addAttribute("jumlahNotFeb",jumlahNotFeb);
		model.addAttribute("jumlahFeb",jumlahFeb);
		
		return "transaksi/pembukuan";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("pemasukanId") int theId,
									Model theModel) {
		Pemasukan pemasukan = pemasukanService.getPemasukan(theId);
		
		theModel.addAttribute("pemasukan",pemasukan);
		return "transaksi/updatePemasukan";
	}
	
	@PostMapping("/updatePemasukan")
	public String updatePemasukan(@ModelAttribute("pemasukan") Pemasukan pemasukan) {
		
		// save the customer using our service
		pemasukanService.updatePemasukan(pemasukan);
		
		
		return "redirect:list";
	}
	
	@GetMapping("/showFormForUpdateNota")
	public String showFormForUpdateNota(@RequestParam("notaId") int theId,
									Model theModel) {
		Nota nota = pemasukanService.getNota(theId);
		
		theModel.addAttribute("nota",nota);
		return "transaksi/updateNota";
	}
	
	@PostMapping("/updateNota")
	public String updateNota(@ModelAttribute("nota") Nota nota) {
		
		// save the customer using our service
		pemasukanService.updateNota(nota);
		
		
		return "redirect:list";
	}
	@GetMapping("/deletePemasukan")
	public String deletePemasukan(@RequestParam("pemasukanId") int theId) {
		pemasukanService.deletePemasukan(theId);
		return "redirect:list";
	}
	@GetMapping("/deleteNota")
	public String deleteNota(@RequestParam("notaId") int theId) {
		pemasukanService.deleteNota(theId);
		return "redirect:list";
	}
}
