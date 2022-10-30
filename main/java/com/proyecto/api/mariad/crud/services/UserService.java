package com.proyecto.api.mariad.crud.services;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.api.mariad.crud.models.UserModel;
import com.proyecto.api.mariad.crud.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository userRepository;

	public ArrayList<UserModel> getUser() {
		return (ArrayList<UserModel>) userRepository.findAll();
	}

	public UserModel saveUser(UserModel user) {
		return userRepository.save(user);
	}

	public Optional<UserModel> getById(Long id) {
		return userRepository.findById(id);
	}

	public ArrayList<UserModel> getIsMinor(Integer age) {
		return userRepository.filterProcedureIsMinor(age);
	}

	public ArrayList<UserModel> getByGenderFemale(String gender) {
		return userRepository.filterProcedureGenderF(gender);
	}

	public ArrayList<UserModel> getByGenderMale(String gender) {
		return userRepository.filterProcedureGenderM(gender);
	}

	public boolean deleteUser(Long id) {
		try {
			userRepository.deleteById(id);
			return true;
		} catch (Exception err) {
			return false;
		}
	}

}
