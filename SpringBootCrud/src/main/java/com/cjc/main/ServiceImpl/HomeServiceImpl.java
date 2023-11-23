package com.cjc.main.ServiceImpl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.main.Service.HomeService;
import com.cjc.main.model.Student;
import com.cjc.main.repository.HomeRepository;
@Service
public class HomeServiceImpl implements HomeService{
@Autowired
HomeRepository hr;

	@Override
	public void saveData(Student s) {
		hr.save(s);
	}

	@Override
	public void loginCheck(String un, String ps) {
		hr.findAllByUsernameAndPassword(un, ps);
		
		
	}

	@Override
	public Iterable displayAllData() {
	return	hr.findAll();	
	}

	
	@Override
	public Student getEditdata(int sid) {
		// TODO Auto-generated method stub
		Optional<Student>s=hr.findById(sid);
		Student st=s.get();
		return st;
	}

	@Override
	public void UpdateStudentData(Student s) {
      hr.save(s);
		
	}

}
