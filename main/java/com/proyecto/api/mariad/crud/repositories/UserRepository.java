package com.proyecto.api.mariad.crud.repositories;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.proyecto.api.mariad.crud.models.UserModel;

/**
 * Esta interfaz UserRepository extiende de la interfaz generica que es
 * CrudRepository. Esto signiica que implementan cierto metodos y que los extrae
 * de CrudRepository. CrudRepository recibe por parametro la interfaz que
 * manejara y el tipo de id que tenga. Acá llamaremos a todos los metodos que
 * utilizaremos y con query llamamos a los procesos almacenados que tengamos en
 * base de datos o consultas que quisieramos utilizar.
 * 
 * @author: Maria Dominguez
 * @version: 31/10/2020
 */

@Repository
public interface UserRepository extends CrudRepository<UserModel, Long> {

	@Query(value = "{call getIsMinor()}", nativeQuery = true)
	public abstract ArrayList<UserModel> filterProcedureIsMinor(Integer age);

	@Query(value = "{call getByGenderFemale()}", nativeQuery = true)
	public abstract ArrayList<UserModel> filterProcedureGenderF(String gender);

	@Query(value = "{call getByGenderMale()}", nativeQuery = true)
	public abstract ArrayList<UserModel> filterProcedureGenderM(String gender);

	@Query(value = "{call updateUser(:idUser,:firstname,:lastname,:email,:age)}", nativeQuery = true)
	public abstract UserModel filterProcedureUpdateUser(@Param("firstname") String firstname,
			@Param("lastname") String lastname, @Param("email") String email, @Param("age") Integer age);

}
