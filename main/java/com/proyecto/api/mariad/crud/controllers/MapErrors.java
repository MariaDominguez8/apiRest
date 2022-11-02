package com.proyecto.api.mariad.crud.controllers;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * Esta clase se encarga de almacenar los errores(excepciones) en formato key : value utilizando
 * la interfaz Map, su clase HashMap y de esta clase, el metodo put para poder asociar cada
 * nombreError con su mensaje correspondiente.    
 * @author: Maria Dominguez
 * @version: 02/11/2022
 */

@RestControllerAdvice // Pueder ser ControllerAdvice pero como es API REST va RestControllerAdvice
public class MapErrors {
	
	@ResponseStatus(code=HttpStatus.BAD_REQUEST) // Este codigo se va a ejecutar cuando el error sea 400.
	@ExceptionHandler(MethodArgumentNotValidException.class) // El tipo de excepcion(error) que queremos que maneje
	public Map<String,String> exceptionErr(MethodArgumentNotValidException err){ 
		Map<String,String> errors = new HashMap<String,String>();
		err.getBindingResult().getAllErrors().forEach((erro)->{ // Obtenemos las excepciones 
		String nameErr = ((FieldError)erro).getField();  
		String message = erro.getDefaultMessage(); // Al mensaje solo asignamos el mensaje de error por defecto(Lo asignamos en UserModel con message)
		errors.put(nameErr, message); // El metodo put asocia el nombre del error y el mensaje, como key y value.
		});
		return errors;
	}
}
