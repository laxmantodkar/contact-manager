package com.contact.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.contact.model.User;
import com.contact.repository.UserRepository;

public class UserDetailsServiceImple implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		User user = userRepository.getUserByUserName(username);
		if(user==null)
		{
			throw new UsernameNotFoundException("Could not fount user !!");
		}
		CustomeUserDetails customeUserDetails=new CustomeUserDetails(user);
		return customeUserDetails;
	}

}
