package com.contact.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.contact.model.User;

public interface UserRepo extends JpaRepository<User, Integer> {

}
