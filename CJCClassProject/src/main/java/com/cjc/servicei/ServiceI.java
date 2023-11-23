package com.cjc.servicei;


import java.util.List;

import com.cjc.model.Admin;
import com.cjc.model.Student;

public interface ServiceI {

	public void saveAdmin(Admin ad);

	public void saveStudent(Student st);

	public List<Admin> loginCheck(String un, String ps);

	public Iterable displayAllData();

	public Student updateStudent(int sid);

	public void updateStudent(Student st);

	public void deleteStudent(int sid);

	public List<Student> serachStudentsByName(String firstName);
	

}
