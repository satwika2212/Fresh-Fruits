package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.model.Fruit;

public class FruitDAO {

	private Connection connection = null;

	public boolean saveFruit(Fruit fruit) throws ClassNotFoundException, SQLException {
		 connection = ConnectionManager.getConnection();
	        String query = "INSERT INTO fruits VALUES (?, ?, ?, ?)";
	        
	        PreparedStatement statement= connection.prepareStatement(query);
	        statement.setString(1,fruit.getName());
	        statement.setInt(2, fruit.getPrice());
	        statement.setString(3, fruit.getDesc());
	        statement.setString(4, fruit.getUrl());
	        
	        int count = statement.executeUpdate();
            return count == 1;

		
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

	public List<Fruit> findAll() throws ClassNotFoundException, SQLException {
		Connection connection =ConnectionManager.getConnection();
		String query="select * from fruits";
		PreparedStatement statement=connection.prepareStatement(query);
		ResultSet set= statement.executeQuery();
		
		List<Fruit> empList=new ArrayList<Fruit>();
		
		while(set.next()) {
			Fruit fruit =new Fruit();
			
			fruit.setName(set.getString(1));
			
			fruit.setPrice(set.getInt(2));
			fruit.setDesc(set.getString(3));
			fruit.setUrl(set.getString(4));
		
			empList.add(fruit);
		}
		
		return empList;
	}

	public boolean updatefruit(Fruit fruit) throws ClassNotFoundException, SQLException {
		
		connection= ConnectionManager.getConnection();
		String query="update fruits set  price=?,description=?,image_url=? where name=?";
		
		PreparedStatement statement=connection.prepareStatement(query);
		
		statement.setString(4, fruit.getName());
		statement.setInt(1,fruit.getPrice());
		statement.setString(2, fruit.getDesc());
		statement.setString(3, fruit.getUrl());
		
		
		int count=statement.executeUpdate();
		
		if(count==1) {
			return true;
		}
		return false;
		
	}

	public void deleteFruit(String name) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		String query= "delete from fruits where name=?";
		PreparedStatement statement=connection.prepareStatement(query);
		
		statement.setString(1, name);
		
		statement.executeUpdate();
		
	}

	public Fruit searchFruit(String name) throws ClassNotFoundException, SQLException {
		
		
		Connection connection =ConnectionManager.getConnection();
		connection.setAutoCommit(true);
		String query="select * from fruits where name = ?";
		PreparedStatement statement=connection.prepareStatement(query);
		statement.setString(1, name);
		
		ResultSet set= statement.executeQuery();
		
		Fruit fruit=new Fruit();
		
		while(set.next()) {
			
			fruit.setName(set.getString(1));
			
			fruit.setPrice(set.getInt(2));
			fruit.setDesc(set.getString(3));
			
		
			
		}
		
		return fruit;
	}

	
	
}
