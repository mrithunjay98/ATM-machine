package com.gyanjyoti.repo;


import org.springframework.data.jpa.repository.JpaRepository;

import com.gyanjyoti.login.ClassTeacherLogin;

public interface CteacherRepo extends JpaRepository<ClassTeacherLogin, Long> {

ClassTeacherLogin	findByemail(String email);

}
