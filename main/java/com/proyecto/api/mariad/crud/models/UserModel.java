package com.proyecto.api.mariad.crud.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

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
	private Long id; // Mejor opcion encontrada segun el caso, para el error duplicate pk 'value'

	@Column(name = "firstname", nullable = false, length = 36) // hacemos referencia al nombre de las columnas
	@NotBlank(message="Este campo es obligatorio.")
	@NotNull
	@Size(min=2,max=36,message="El nombre ingresado debe tener entre 2 y 36 caracteres.")
	private String firstName;

	@Column(name = "lastname", nullable = false, length = 41) // nullable se utiliza para atributos que sean not-null
	@NotBlank(message="Este campo es obligatorio.")
	@NotNull
	@Size(min=2,max=41,message="El apellido ingresado debe tener entre 2 y 41 caracteres")
	private String lastName;

	@Column(name = "email", length = 50) // le damos una longitud máxima de 50 caracteres
	@Email(message= "Debe ingresar un email válido.")
	@Size(max=50,message="El email debe tener un máximo de 50 caracteres.")
	private String email;

	@Column(name = "age", nullable = false, length = 3)
	@NotNull
	@DecimalMin("1") @DecimalMax("130")
	private Integer age;

	@Column(name = "gender", nullable = false, length = 10)
	@NotBlank(message="Este campo es obligatorio.")
	@NotNull
	@Size(min=4,max=10,message="El género ingresado debe tener entre 4 y 10 caracteres.")
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

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}
