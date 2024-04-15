package com.gyanjyoti.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Transport {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    
	    private String route;
	    private String vehicleNumber;
	    
	    @ManyToOne
	    @JoinColumn(name = "student_id")
	    private Student student;
	    
	    

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getRoute() {
			return route;
		}

		public void setRoute(String route) {
			this.route = route;
		}

		public String getVehicleNumber() {
			return vehicleNumber;
		}

		public void setVehicleNumber(String vehicleNumber) {
			this.vehicleNumber = vehicleNumber;
		}

		public Student getStudent() {
			return student;
		}

		public void setStudent(Student student) {
			this.student = student;
		}
	    
	    
}
