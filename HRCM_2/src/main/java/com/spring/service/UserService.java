package com.spring.service;

import java.util.List;

import com.spring.model.Career;
import com.spring.model.EmpLogin;
import com.spring.model.Employee;
import com.spring.model.Feedback;
import com.spring.model.LoginBean;
import com.spring.model.Password;
import com.spring.model.Round1;
import com.spring.model.Rounds;
import com.spring.model.User;

public interface UserService {

	public User register(User user); 

	public List<User> listuser();

	public Career addform(Career form);

	
	public User validateUser(LoginBean login);

	public List<Career> listform();

	
	public boolean isValidemail(Password passwd);

	public Employee validateEmployee(EmpLogin emplogin);

	public Employee addempregister(Employee emp);

	public void roundreg(Rounds rounds);

	public void addfeedback(Feedback feedback);

	public Round1 round1reg(Round1 round1);
		

	
	
	
}
