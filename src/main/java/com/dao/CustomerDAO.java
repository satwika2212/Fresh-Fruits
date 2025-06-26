package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Customer;

public class CustomerDAO {
    private Connection connection = null;

    public boolean saveuser(Customer customer) throws ClassNotFoundException, SQLException {
        connection = ConnectionManager.getConnection();
        String query = "INSERT INTO customer VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, customer.getEmail());
            statement.setString(2, customer.getName());
            statement.setString(3, customer.getPassword());
            statement.setInt(4, customer.getAge());
            statement.setString(5, customer.getGender());
            statement.setString(6, customer.getMobile());
            statement.setString(7, customer.getAddress());

            int count = statement.executeUpdate();
            return count == 1;
        }
    }

    public void commit() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.commit();
            connection.close();
        }
    }

    public void rollback() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.rollback();
            connection.close();
        }
    }

    public boolean checkLogin(String email, String password) throws ClassNotFoundException, SQLException {
		Connection connection =ConnectionManager.getConnection();
		connection.setAutoCommit(true);
		
		
		String query = "select count(*) from customer where email=? and password =?";
		PreparedStatement statement=connection.prepareStatement(query);
		statement.setString(1, email);
		statement.setString(2, password);
		
		ResultSet set=statement.executeQuery();
		int count=0;
		if(set.next()) {
			count=set.getInt(1);
		}
		
		connection.close();
		
		if(count==1) {
			return true;
		}
		
		
		return false;
	}

	public List<Customer> findAll() throws ClassNotFoundException, SQLException {
		Connection connection =ConnectionManager.getConnection();
		String query="select * from customer";
		PreparedStatement statement=connection.prepareStatement(query);
		ResultSet set= statement.executeQuery();
		
		List<Customer> userList=new ArrayList<Customer>();
		
		while(set.next()) {
			Customer customer =new Customer();

			customer.setEmail(set.getString(1));
			customer.setName(set.getString(2));
			customer.setPassword(set.getString(3));
			customer.setAge(set.getInt(4));
			customer.setGender(set.getString(5));
			customer.setMobile(set.getString(6));
			customer.setAddress(set.getString(7));
		
			userList.add(customer);
	}
		return userList;
}

	public boolean updatcustomer(Customer customer) throws ClassNotFoundException, SQLException {
		connection= ConnectionManager.getConnection();
		String query="update customer set name=?, age=?,gender=?,mobile=?,address=? where email=?";
		
		PreparedStatement statement=connection.prepareStatement(query);
		
		statement.setString(1, customer.getName());
		statement.setInt(2,customer.getAge());
		statement.setString(3, customer.getGender());
		statement.setString(4, customer.getMobile());
		statement.setString(5, customer.getAddress());
		statement.setString(6, customer.getEmail());
		
		int count=statement.executeUpdate();
		
		if(count==1) {
			return true;
		}
		return false;
	}
	
	public void deletecustomer(String email) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		String query= "delete from customer where email=?";
		PreparedStatement statement=connection.prepareStatement(query);
		
		statement.setString(1, email);
		
		statement.executeUpdate();
		
	}

	public Customer searchUser(String email) throws ClassNotFoundException, SQLException {
		Connection connection =ConnectionManager.getConnection();
		connection.setAutoCommit(true);
		String query="select * from customer where email = ?";
		PreparedStatement statement=connection.prepareStatement(query);
		statement.setString(1, email);
		
		ResultSet set= statement.executeQuery();
		
		Customer customer=new Customer();
		
		while(set.next()) {
			customer.setEmail(set.getString(1));
			customer.setName(set.getString(2));
			customer.setPassword(set.getString(3));
			customer.setAge(set.getInt(4));
			customer.setGender(set.getString(5));
			customer.setMobile(set.getString(6));
			
			customer.setAddress(set.getString(7));
		
			
		}
		
		return customer;
	}

	public Customer searchCustomer(String email) throws ClassNotFoundException, SQLException {
		Connection connection =ConnectionManager.getConnection();
		connection.setAutoCommit(true);
		String query="select * from customer where email = ?";
		PreparedStatement statement=connection.prepareStatement(query);
		statement.setString(1, email);
		
		ResultSet set= statement.executeQuery();
		
		Customer customer=new Customer();
		
		while(set.next()) {
			customer.setEmail(set.getString(1));
			customer.setName(set.getString(2));
			customer.setPassword(set.getString(3));
			customer.setAge(set.getInt(4));
			customer.setGender(set.getString(5));
			customer.setMobile(set.getString(6));
			
			customer.setAddress(set.getString(7));
		
			
		}
		
		return customer;
	}
}

