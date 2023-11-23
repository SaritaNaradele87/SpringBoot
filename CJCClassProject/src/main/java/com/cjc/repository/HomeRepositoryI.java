package com.cjc.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cjc.model.Admin;
@Repository
public interface HomeRepositoryI extends CrudRepository<Admin,Integer> {

	public List<Admin> findAllByUserNameAndPassword(String un, String ps);

}
