package com.spring.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.mysql.jdbc.Blob;
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

public class UserDaoImpl implements UserDao {

	@Autowired
	DataSource datasource;

	@Autowired
	JdbcTemplate jdbcTemplate;

	public User validateUser(LoginBean login) {
		String sql = "select * from users where email='" + login.getEmailData() + "' and password='"
				+ login.getPassword() + "'";
		System.out.println("sql .." + sql);
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		System.out.println("users .." + users);
		return (users.size() > 0 ? users.get(0) : null);
	}

	public User register(User user) {

		String sql = "insert into users (fullname,employeeid,email,Password,Retypepassword)"+ "values (?,?,?,?,?)";

		jdbcTemplate.update(sql, new Object[] { user.getFullname(), user.getEmployeeid(), user.getEmail(), user.getPassword(), user.getRetypepassword(), });
		return user;
	}
	
	
	
	public List<User> listuser() {

		String sql = null;

		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		return (List<User>) (users.size() > 0 ? users.get(0) : null);

	}

	class UserMapper implements RowMapper<User> {
		public User mapRow(ResultSet rs, int arg1) throws SQLException {
			User user = new User();

			user.setFullname(rs.getString("fullname"));
			user.setEmployeeid(rs.getString("employeeid"));
			user.setEmail(rs.getString("email"));
		/*	user.setCity(rs.getString("city"));
			user.setUsername(rs.getString("Username"));*/
			user.setPassword(rs.getString("Password"));
			user.setRetypepassword(rs.getString("retypepassword"));

			return user;
		}
	}

	public Career addform(Career form) {

		String sql = "insert into careers (firstname, lastname,email,phone,aadhar,country,city, address,experience,position,message,resume,mytime)"
				+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?)";

		int count = jdbcTemplate.update(sql,
				new Object[] {form.getFirstname(), form.getLastname(), form.getEmail(), form.getPhone(),form.getAadhar(),
						form.getCountry(), form.getCity(), form.getAddress(), form.getExperience(), form.getPosition(),
						form.getMessage(), form.getResume(), form.getMytime(), });
		return form;

	}
	public List<Career> listform() {

		String sql = "select * from careers";
		List<Career> careers = new ArrayList<Career>();
		List<Map<String, Object>> careersRows = jdbcTemplate.queryForList(sql);

		for (Map<?, ?> row : careersRows) {
			Career form = new Career();
			
			
		
			form.setFirstname((String) row.get("firstname"));
			form.setLastname((String) row.get("lastname"));
			form.setEmail((String) row.get("email"));
			// form.setPhone((Integer) row.get("phone"));
			form.setAadhar((String) row.get("aadhar"));
			form.setCountry((String) row.get("country"));
			
			form.setCity((String) row.get("city"));
			form.setAddress((String) row.get("address"));
			form.setPosition((String) row.get("position"));
			form.setMessage((String) row.get("message"));
			if (row.get("resume") != null) {
				form.setfName("yes");
			}
			form.setMytime((Timestamp) row.get("mytime"));

	/*		form.setAadhar((String) row.get("aadhar"));*/
			careers.add(form);
		}
		return careers;

	}
	
	
	class CareerMapper implements RowMapper<Career> {
		public Career mapRow(ResultSet rs, int arg1) throws SQLException {
			Career form = new Career();

			/*form.setId(rs.getString("id"));*/
			form.setFirstname(rs.getString("firstname"));
			form.setLastname(rs.getString("lastname"));
			form.setEmail(rs.getString("email"));
			form.setPhone(rs.getInt("phone"));
			form.setAadhar(rs.getString("aadhar"));
			form.setCountry(rs.getString("country"));
			form.setCity(rs.getString("city"));
			form.setAddress(rs.getString("address"));
			form.setPosition(rs.getString("position"));
			form.setMessage(rs.getString("message"));
//			form.setResume(rs.getBlob("resume"));
			form.setMytime(rs.getDate("mytime"));
			
			return form;
		}

	}
	
	
	public boolean isValidemail(Password passwd) {
		// TODO Auto-generated method stub

		boolean isValidemail = false;
		// int userCount = 0;
		int userCount = 1;
		Object[] loginObj = new Object[] { passwd.getPass(), passwd.getEmail(),};
		String sql = "update users set password=? where email=?";
		System.out.println("sql .." + sql);
		if (jdbcTemplate != null) {
			userCount = jdbcTemplate.update(sql, loginObj);
		}

		if (userCount > 0) {
			isValidemail = true;
			System.out.println("users .." + sql);
		} else {
			isValidemail = false;
		}
		return isValidemail;
	}

	public Employee  validateEmployee(EmpLogin emplogin) {
		String sql = "select * from emp where email='" + emplogin.getEmail() + "' and password='" + emplogin.getPassword() + "'";
			System.out.println("sql .." + sql);
			List<Employee> emp = jdbcTemplate.query(sql, new EmployeeMapper());
			System.out.println("employee.." + emp);
			return (emp.size() > 0 ? emp.get(0) : null);
		}

	public List<Employee> listemp() {

		String sql = null;

		List<Employee> emp = jdbcTemplate.query(sql, new EmployeeMapper());
		return (List<Employee>) (emp.size() > 0 ? emp.get(0) : null);

	}

	public Employee addempregister(Employee emp) {

		String sql = "insert into emp (fullname,employeeid, email,Password,Retypepassword)" + "values (?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] { emp.getFullname(), emp.getEmployeeid(), emp.getEmail(),
				emp.getPassword(), emp.getRetypepassword(), });
		return emp;
	}

/*	public List<Employee> listemp() {

		String sql = "select * from emp";
		List<Employee> emp = new ArrayList<Employee>();
		List<Map<String, Object>> empRows = jdbcTemplate.queryForList(sql);

		for (Map<?, ?> row : empRows) {
			Employee emps = new Employee();
			emps.setFullname((String) row.get("fullname"));
			emps.setEmployeeid((String) row.get("employeeid"));
			emps.setEmail((String) row.get("email"));
			emps.setCity((String) row.get("city"));
			
			emps.setUsername((String) row.get("username"));
			emps.setPassword((String) row.get("password"));
			emps.setRetypepassword((String) row.get("retypepassword"));
			
			emp.add(emps);
		}
		return emp;

	} */

	class EmployeeMapper implements RowMapper<Employee> {
		public Employee mapRow(ResultSet rs, int arg1) throws SQLException {
			Employee emp = new Employee();

			emp.setFullname(rs.getString("fullname"));
			emp.setEmployeeid(rs.getString("employeeid"));
			emp.setEmail(rs.getString("email"));
			/*emp.setCity(rs.getString("city"));
			
			emp.setUsername(rs.getString("username"));*/
			emp.setPassword(rs.getString("password"));
			emp.setRetypepassword(rs.getString("retypepassword"));
			

			return emp;
		}

	}

	/*public Rounds roundreg(Rounds rounds) {
		String sql = "insert into round1 (name, techname, email) values (?,?,?)";

		int count = jdbcTemplate.update(sql,new Object[] { rounds.getName(), rounds.getNickName(), rounds.getEmail(), });
		return rounds;
	}*/

	public List<Rounds> listrounds() {

		String sql = "select * from round1";
		List<Rounds> rounds = new ArrayList<Rounds>();
		List<Map<String, Object>> roundsRows = jdbcTemplate.queryForList(sql);

		for (Map<?, ?> row : roundsRows) {
			Rounds round = new Rounds();
			round.setName((String) row.get("name"));
			round.setNickName((String) row.get("techname"));
			round.setEmail((String) row.get("email"));
			rounds.add(round);
		}
		return rounds;

	}
	
	

	class RoundsMapper implements RowMapper<Rounds> {
		public Rounds mapRow(ResultSet rs, int arg1) throws SQLException {
			Rounds round = new Rounds();

			round.setName(rs.getString("Name"));
			round.setNickName(rs.getString("techname"));
			round.setEmail(rs.getString("Email"));
			return round;
		}

	}

	

	public void addemailforms(TechnicalEmail technicalEmail) {
		// TODO Auto-generated method stub
		
	}

	public Feedback addfeedback(Feedback fb) {
		String sql = "insert into feedback (fullname,email,date,tech_marks,com_marks,attitude_marks,status) values (?,?,?,?,?,?,?)";

		int count = jdbcTemplate.update(sql, new Object[] { fb.getFullname(), fb.getEmail(), fb.getDate(),
				fb.getTech_marks(), fb.getCom_marks(), fb.getAttitude_marks(), fb.getStatus(), });
		return fb;
	}

	public List<Feedback> listfeedback() {

		String sql = null;

		List<Feedback> feedback = jdbcTemplate.query(sql, new FeedbackMapper());
		return (List<Feedback>) (feedback.size() > 0 ? feedback.get(0) : null);

	}
	
	
	class FeedbackMapper implements RowMapper<Feedback> {
		public Feedback mapRow(ResultSet rs, int arg1) throws SQLException {
			Feedback feedback = new Feedback();

			feedback.setFullname(rs.getString("fullname"));
			feedback.setEmail(rs.getString("email"));
			feedback.setDate(rs.getDate("date"));
			feedback.setTech_marks(rs.getInt("tech_marks"));
			feedback.setCom_marks(rs.getInt("com_marks"));
			feedback.setAttitude_marks(rs.getInt("attitude_marks"));
			feedback.setStatus(rs.getString("status"));

			return feedback;
		}
	}	
	
	
	public Round1 round1reg(Round1 round1) {
		String sql = "insert into round1 (name, techname, email) values (?,?,?)";

		int count = jdbcTemplate.update(sql,new Object[] { round1.getName(), round1.getTechname(), round1.getEmail() });
		return round1;
	}

	public Rounds roundreg(Rounds rounds) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	}
