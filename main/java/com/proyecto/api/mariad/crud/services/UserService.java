package com.proyecto.api.mariad.crud.services;
import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.api.mariad.crud.models.UserModel;
import com.proyecto.api.mariad.crud.repositories.UserRepository;

/**
 * En Esta clase se desarrollan los métodos que necesitemos utilizar. Conecta
 * con UserRepository que es en donde realmente se realizan las conexiones a la
 * base de datos.
 * 
 * @author: Maria Dominguez
 * @version: 31/10/2022
 */

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;

	public ArrayList<UserModel> getUser() {
		return (ArrayList<UserModel>) userRepository.findAll();
	}

	public UserModel saveUser(UserModel user) {
		if(userRepository.existsById(user.getId())) {
			return userRepository.save(user);	
		} else {
			return new UserModel();
		}
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

	public UserModel updateUser(UserModel user) {
		return userRepository.filterProcedureUpdateUser(user.getFirstName(), user.getLastName(), user.getEmail(),
				user.getAge());
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
