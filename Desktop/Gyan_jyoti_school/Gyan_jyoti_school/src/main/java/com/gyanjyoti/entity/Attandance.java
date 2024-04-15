package com.gyanjyoti.entity;

import java.sql.Date;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

public class Attandance {

	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    @Temporal(TemporalType.DATE)
	    private Date date;

	    private boolean present;

	   

	    @ManyToOne
	    @JoinColumn(name = "student_id")
	    private Student student;



		public Long getId() {
			return id;
		}



		public void setId(Long id) {
			this.id = id;
		}



		public Date getDate() {
			return date;
		}



		public void setDate(Date date) {
			this.date = date;
		}



		public boolean isPresent() {
			return present;
		}



		public void setPresent(boolean present) {
			this.present = present;
		}



		public Student getStudent() {
			return student;
		}



		public void setStudent(Student student) {
			this.student = student;
		}
	    
	    
	    
}
