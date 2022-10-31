package com.proyecto.api.mariad.crud.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Esta clase define el modelo de tabla que tengamos en la base de datos o que
 * quisieramos crear. Las anotaciones table nos permiten manejar el nombre de la
 * tabla a la cual refiere o que quisieramos que obtenga la tabla a generar.
 * 
 * @author: Maria Dominguez
 * @version: 31/10/2022
 */

@Entity
@Table(name = "users")
public class UserModel {

	/*----- ATRIBUTOS -----*/
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) // Opción recomendada para MySQL. genera id según la base de
														// datos
	private Long id; // Mejor opcion encontrada segun el caso, para el error duplicate pk 'value'

	@Column(name = "firstname", nullable = false, length = 36) // hacemos referencia al nombre de las columnas
	private String firstName;

	@Column(name = "lastname", nullable = false, length = 41) // nullable se utiliza para atributos que sean not-null
	private String lastName;

	@Column(name = "email", length = 50) // le damos una longitud máxima de 50 caracteres
	private String email;

	@Column(name = "age", nullable = false, length = 3)
	private Integer age;

	@Column(name = "gender", nullable = false, length = 10)
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
