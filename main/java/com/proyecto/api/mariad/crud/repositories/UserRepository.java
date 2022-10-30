package com.proyecto.api.mariad.crud.repositories;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.proyecto.api.mariad.crud.models.UserModel;

@Repository
public interface UserRepository extends CrudRepository<UserModel, Long> {

	@Query(value = "{call getIsMinor()}", nativeQuery = true)
	public abstract ArrayList<UserModel> filterProcedureIsMinor(Integer age);

	@Query(value = "{call getByGenderFemale()}", nativeQuery = true)
	public abstract ArrayList<UserModel> filterProcedureGenderF(String gender);

	@Query(value = "{call getByGenderMale()}", nativeQuery = true)
	public abstract ArrayList<UserModel> filterProcedureGenderM(String gender);

}
