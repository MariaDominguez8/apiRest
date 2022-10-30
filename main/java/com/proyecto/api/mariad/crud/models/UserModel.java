package com.proyecto.api.mariad.crud.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class UserModel {

	/*----- ATRIBUTOS -----*/
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; // Mejor opcion encontrada segun el caso, para el error duplicate pk 'value'

	@Column(name = "firstname", nullable = false, length = 36) // hacemos referencia a las columnas de la tabla
	private String firstName;

	@Column(name = "lastname", nullable = false, length = 41)
	private String lastName;

	@Column(name = "email", length = 50)
	private String email;

	@Column(name = "age", length = 3)
	private Integer age;

	@Column(name = "gender", length = 10)
	private String gender;

	/*----- GETTERS AND SETTERS -----*/
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
