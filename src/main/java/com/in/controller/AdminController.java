package com.in.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/admin")
public class AdminController {

	@PostMapping("/home")
	public ResponseEntity<?> saveProduct(HttpSession session) {
		String msg = "Admin :: Dashboard Page";
		System.out.println(session.getId());
		return new ResponseEntity<>(msg, HttpStatus.CREATED);
	}

	@GetMapping("/home")
	public ResponseEntity<?> getProduct(HttpSession session) {
		String msg = "Admin :: Dashboard Page";
		System.out.println(session.getId());
		return new ResponseEntity<>(msg, HttpStatus.CREATED);
	}
	
	
}
