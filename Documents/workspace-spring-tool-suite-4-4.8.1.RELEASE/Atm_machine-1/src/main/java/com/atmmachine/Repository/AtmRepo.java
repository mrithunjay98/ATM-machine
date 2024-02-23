package com.atmmachine.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.atmmachine.entity.CreateAccount;

public interface AtmRepo extends JpaRepository<CreateAccount,Long> {

	CreateAccount findByMob(String mob);
	CreateAccount findByatmPin(long pin);
	CreateAccount findByAccountNumber(long accountNumber);

}
