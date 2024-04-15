package com.gyanjyoti.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gyanjyoti.entity.Student;

public interface studentRepo extends JpaRepository<Student, Long> {

}
