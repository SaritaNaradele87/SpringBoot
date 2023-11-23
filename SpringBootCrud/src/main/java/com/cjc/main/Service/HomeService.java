package com.cjc.main.Service;

import org.springframework.stereotype.Service;

import com.cjc.main.model.Student;
@Service
public interface HomeService {
	public void saveData(Student s);

	public void loginCheck(String un, String ps);

	public Iterable displayAllData();

	

	public Student getEditdata(int sid);

	

	public void UpdateStudentData(Student s);

}
