package com.atmmachine.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


public class Verifypin {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	private long atmPin;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getAtmPin() {
		return atmPin;
	}

	public void setAtmPin(long atmPin) {
		this.atmPin = atmPin;
	}

	
	
	
}
