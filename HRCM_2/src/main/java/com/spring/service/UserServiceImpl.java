package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.dao.UserDao;
import com.spring.model.Career;
import com.spring.model.EmpLogin;
import com.spring.model.Employee;
import com.spring.model.Feedback;
import com.spring.model.TechnicalEmail;
import com.spring.model.LoginBean;
import com.spring.model.Password;
import com.spring.model.Round1;
import com.spring.model.Rounds;
import com.spring.model.User;


public class UserServiceImpl implements UserService{
	
	@Autowired
	 public UserDao userDao;
	
	
public User register(User user) {
	    return userDao.register(user);
	  }

public User validateUser(LoginBean login) {
	    return userDao.validateUser(login);
	  }
	  
public List<User> listuser()
	  {
		  return userDao.listuser();  
	  }
	
 public Career addform(Career form)
	  {  
	 return userDao.addform(form);
	  }

public void addemailforms(TechnicalEmail form) {
		userDao.addemailforms(form);
	}

public List<Career> listform() {
	return userDao.listform();
		
	}

	public boolean isValidemail(Password passwd) {
		boolean isValidemail = false;
		if(userDao != null){
			isValidemail = userDao.isValidemail(passwd);
		}
		return isValidemail;		
	}

	public Employee validateEmployee(EmpLogin emplogin) {
		 return userDao.validateEmployee(emplogin);
	  }

	public Employee addempregister(Employee emp) {
		 return userDao.addempregister(emp);
	  }

	public void roundreg(Rounds rounds) {
		userDao.roundreg(rounds);
		
	}

	public void addfeedback(Feedback feedback) {
		userDao.addfeedback(feedback);	
	}

	public Round1 round1reg(Round1 round1) {
	return	userDao.round1reg(round1);
	}
	
	}

	
	
	


