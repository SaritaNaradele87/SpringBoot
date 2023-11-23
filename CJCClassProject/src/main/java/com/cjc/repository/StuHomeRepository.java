package com.cjc.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cjc.model.Student;
@Repository
public interface StuHomeRepository extends CrudRepository<Student,Integer> {

 public	List<Student> findAllByFirstName(String firstName);

	

}
