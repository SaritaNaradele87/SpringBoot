package com.cjc.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.model.Admin;
import com.cjc.model.Student;
import com.cjc.repository.HomeRepositoryI;
import com.cjc.repository.StuHomeRepository;
import com.cjc.servicei.ServiceI;
@Service
public class ServiceImpl implements ServiceI {
	@Autowired
	HomeRepositoryI hi;
	@Autowired
	StuHomeRepository sr;
	
	public void saveAdmin(Admin ad) {
		hi.save(ad);
	}
	public void saveStudent(Student st) {
		sr.save(st);
	}
	@Override
	public List<Admin> loginCheck(String un, String ps) {
		List<Admin> authAdmins = hi.findAllByUserNameAndPassword(un,ps);
		return authAdmins;
		
	}
	@Override
	public Iterable displayAllData() {
	
		return sr.findAll();
	}
public Student updateStudent(int sid) {
		
		Optional<Student> st = sr.findById(sid);
		return st.get();		
	}
	
	public void updateStudent(Student st) {
		sr.save(st);
		
	}
	@Override
	public void deleteStudent(int sid) {
		sr.deleteById(sid);
		
	}
	@Override
	public List<Student>  serachStudentsByName(String firstName) {
		
         List<Student> searchedStudents=sr.findAllByFirstName(firstName);
         return searchedStudents;
	}

	
}
