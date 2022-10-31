package com.proyecto.api.mariad.crud.controllers;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.proyecto.api.mariad.crud.models.UserModel;
import com.proyecto.api.mariad.crud.services.UserService;

/**
 * Esta clase es quien recibe las peticiones web, ya sea de tipo GET,POST,PUT o
 * DELETE Luego hace un llamado a un servicio que es el que ejecuta la logica de
 * la app.
 * 
 * @author: Maria Dominguez
 * @version: 31/10/2022
 */

@RestController
@RequestMapping("users")
public class UserController {
	@Autowired
	UserService userService;

	@GetMapping()
	public ArrayList<UserModel> getUser() {
		return userService.getUser();
	}

	@RequestMapping(value = "/create")
	@PostMapping()
	public UserModel saveUser(@RequestBody UserModel user) {
		return this.userService.saveUser(user);
	}

	@GetMapping(path = "/{id}")
	public Optional<UserModel> getById(@PathVariable("id") Long id) {
		return this.userService.getById(id);
	}

	@GetMapping("/minors")
	public ArrayList<UserModel> getByMinors(Integer age) {
		return userService.getIsMinor(age);
	}

	@GetMapping("/genderFemale")
	public ArrayList<UserModel> getByGenderFemale(String gender) {
		return userService.getByGenderFemale(gender);
	}

	@GetMapping("/genderMale")
	public ArrayList<UserModel> getByGenderMale(String gender) {
		return userService.getByGenderMale(gender);
	}

	@RequestMapping(value = "/editUser/{id}")
	@PutMapping()
	public UserModel updateUser(@RequestBody UserModel user, @PathVariable Long id) {

		return this.userService.saveUser(user);

	}

	@DeleteMapping(path = "/delete/{id}")
	public String deleteById(@PathVariable("id") Long id) {
		boolean ok = this.userService.deleteUser(id);
		if (ok) {
			return "Se ha eliminado el usuario nro " + id + " con éxito";
		} else {
			return "No se ha podido eliminar el usuario nro " + id;
		}
	}
}
