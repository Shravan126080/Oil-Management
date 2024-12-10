package com.modules;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.formentity;
import com.entity.oilentity;
import com.entity.storeentity;
import com.mysql.cj.protocol.Resultset;


public class pro_modules {
	private static final String Quantity = null;
	Connection com;
	
	public pro_modules(Connection com) {
		super();
		this.com=com;
		
	}
	
	public boolean insert(formentity obj) throws SQLException {
boolean b= false;
String sql="insert into groundnuts( name, Product, Quantity, Price, Date, Time ,Total) values(?,?,?,?,?,?,?)";
PreparedStatement ps=com.prepareStatement(sql);
ps.setString(1,obj.getName());
ps.setString(2,obj.getProduct());
ps.setString(3, obj.getQuantity());
ps.setString(4, obj.getPrice());
ps.setString(5, obj.getDate());
ps.setString(6, obj.getTime());
ps.setString(7, obj.getTotal());
	int i=ps.executeUpdate();
if(i==1) {
	System.out.println("data insert");
	b=true;
	
}

		return b;
	}
	

	public List<formentity> allRecord() throws SQLException{
		List<formentity> pl= new ArrayList<formentity>();
		formentity a=null;
		String sql="select * from groundnuts";
		PreparedStatement ps= com.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			a= new formentity();
			a.setId(rs.getInt(1));
			a.setName(rs.getString(2));
			a.setProduct(rs.getString(3));;
			a.setQuantity(rs.getString(4));
			a.setPrice(rs.getString(5));
			a.setDate(rs.getString(6));
			a.setTime(rs.getString(7));
			a.setTotal(rs.getString(8));
			pl.add(a);
		}
		
		
		return pl;
		
		
		
		
	}
	public List<formentity>updt(int id) throws SQLException{
		List<formentity> m=new ArrayList<formentity>();
		formentity t=null;
		String sql="select * from groundnuts where id=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			t=new formentity();
			t.setId(rs.getInt(1));
			t.setName(rs.getString(2));
			t.setProduct(rs.getString(3));
			t.setQuantity(rs.getString(4));
			t.setPrice(rs.getString(5));
			t.setDate(rs.getString(6));
			t.setTime(rs.getString(7));
			t.setTotal(rs.getString(8));
			m.add(t);
			
			
		}
		return m;
		
	}

	public boolean udateform(formentity d) {
		boolean b2=false;
		try {
			
			String sql="update groundnuts set  name=?, Product=?, Quantity=?, Price=?, Date=?, Time=? ,Total=? where  id=?";
			PreparedStatement ps=com.prepareStatement(sql);
			ps.setString(1, d.getName());
			ps.setString(2, d.getProduct());;
			ps.setString(3, d.getQuantity());
			ps.setString(4, d.getPrice());
			ps.setString(5, d.getDate());
			ps.setString(6, d.getTime());
			ps.setString(7, d.getTotal());
			ps.setInt(8, d.getId());
			int i=ps.executeUpdate();
			if(i==1) {
				b2=true;
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		


		return b2 ;
	}

	public boolean deletef(int id) throws SQLException {
boolean b3=false;
String sql="delete from groundnuts where id=?";
PreparedStatement ps=com.prepareStatement(sql);
ps.setInt(1, id);
int i=ps.executeUpdate();
if(i==1) {
	b3=true;
	
	
}

		return b3;
	}

	public boolean insertoil(oilentity obj) throws SQLException {

		boolean b= false;
		String sql="insert into oil(name,quantity, price,date, total) values(?,?,?,?,?)";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, obj.getName());
		ps.setString(2, obj.getQuantity());
		ps.setString(3, obj.getPrice());
		ps.setString(4, obj.getDate());
		ps.setString(5, obj.getTotal());
			int i=ps.executeUpdate();
		if(i==1) {
			System.out.println("data insert");
			b=true;
			
		}

		return b;
	}
	public List<oilentity> allRecordoil() throws SQLException{
		List<oilentity> pl= new ArrayList<oilentity>();
		oilentity a=null;
		String sql="select * from oil";
		PreparedStatement ps= com.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			a= new oilentity();
			a.setId(rs.getInt(1));
			a.setName(rs.getString(2));

			a.setQuantity(rs.getString(3));
			a.setPrice(rs.getString(4));
			a.setDate(rs.getString(5));
			a.setTotal(rs.getString(6));
			pl.add(a);
		}
		
		
		return pl;
		
		
		
		
	}
	public List<oilentity>updtoil(int id) throws SQLException{
		List<oilentity> m=new ArrayList<oilentity>();
		oilentity t=null;
		String sql="select * from oil where id=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			t=new oilentity();
			t.setId(rs.getInt(1));
			t.setQuantity(rs.getString(2));
			t.setPrice(rs.getString(3));
			t.setTotal(rs.getString(4));
			m.add(t);
			
			
		}
		return m;
		
	}
	public boolean udateoil(oilentity d) {
		boolean b2=false;
		try {
			
			String sql="update oil set   quantity=?, price=?, total=? where  id=?";
			PreparedStatement ps=com.prepareStatement(sql);
			ps.setString(1, d.getQuantity());
			ps.setString(2, d.getPrice());
			ps.setString(3, d.getTotal());
			ps.setInt(4, d.getId());
			int i=ps.executeUpdate();
			if(i==1) {
				b2=true;
				
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		


		return b2 ;
	}

	
	public boolean deleteoil(int id) throws SQLException {
		boolean b3=false;
		String sql="delete from oil where id=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setInt(1, id);
		int i=ps.executeUpdate();
		if(i==1) {
			b3=true;
			
			
		}

				return b3;
			}

public List<formentity>fetdate() throws SQLException{
	List<formentity>l=new ArrayList<formentity>();
	formentity r =null;
	PreparedStatement ps = com.prepareStatement("select * from groundnuts");
	//ps.setString(1, date);
	ResultSet rs =ps.executeQuery();
	while(rs.next()) {
		 r = new formentity();
		 r.setId(rs.getInt(1));
		 r.setName(rs.getString(2));
		 r. setProduct(rs.getString(3));
		 r.setQuantity(rs.getString(4));
		 r.setPrice(rs.getString(5));
		 r.setDate(rs.getString(6));
		 r.setTime(rs.getString(7));
		 r.setTotal(rs.getString(8));
		 l.add(r);
	}
	return l;
	
}
public List<formentity>drop() throws SQLException{
	List<formentity>l=new ArrayList<formentity>();
	formentity d=null;
	PreparedStatement ps=com.prepareStatement("select * from  groundnuts ");
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		d=new formentity();
		d.setId(rs.getInt(1));
		 d.setName(rs.getString(2));
		 d. setProduct(rs.getString(3));
		 d.setQuantity(rs.getString(4));
		 d.setPrice(rs.getString(5));
		d.setDate(rs.getString(6));
		 d.setTime(rs.getString(7));
		 d.setTotal(rs.getString(8));
		 l.add(d);
		
	}
	

	
	return l;
	
}
	
public List<oilentity> dropoil() throws SQLException{
	List<oilentity>n=new ArrayList<oilentity>();
	oilentity d=null;
	PreparedStatement ps=com.prepareStatement("select * from oil ");
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		d=new oilentity();
		d.setId(rs.getInt(1));
		 d.setName(rs.getString(2));
		 d.setQuantity(rs.getString(3));
		 d.setPrice(rs.getString(4));
		d.setDate(rs.getString(5));
		 d.setTotal(rs.getString(6));
		 n.add(d);
		
	}
	

	
	return n;
	
}
public List<formentity>ptable() throws SQLException{
	List<formentity>l=new ArrayList<formentity>();
	formentity d=null;
	PreparedStatement ps=com.prepareStatement("select * from  groundnuts ");
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		d=new formentity();
		d.setId(rs.getInt(1));
		 d.setName(rs.getString(2));
		 d. setProduct(rs.getString(3));
		 d.setQuantity(rs.getString(4));
		 d.setPrice(rs.getString(5));
		d.setDate(rs.getString(6));
		 d.setTime(rs.getString(7));
		 d.setTotal(rs.getString(8));
		 l.add(d);
		
	}
	

	
	return l;
	
}
public List<oilentity> oiltotal() throws SQLException{
	List<oilentity>n=new ArrayList<oilentity>();
	oilentity d=null;
	PreparedStatement ps=com.prepareStatement("select * from oil ");
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		d=new oilentity();
		d.setId(rs.getInt(1));
		 d.setName(rs.getString(2));
		 d.setQuantity(rs.getString(3));
		 d.setPrice(rs.getString(4));
		d.setDate(rs.getString(5));
		 d.setTotal(rs.getString(6));
		 n.add(d);
		
	}
	

	
	return n;
	
}
public formentity check(int  id) throws SQLException {
	formentity z= null;
	String  sql="select * from groundnuts where id=?";
	PreparedStatement ps=com.prepareStatement(sql);
	ps.setInt(1, id);
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		z=new formentity();
		z.setId(rs.getInt(1));
		z.setName(rs.getString(2));
		z. setProduct(rs.getString(3));
		z.setQuantity(rs.getString(4));
		z.setPrice(rs.getString(5));
		z.setDate(rs.getString(6));
		z.setTime(rs.getString(7));
		z.setTotal(rs.getString(8));
		
	}
	return z;
	 
	
}
public oilentity check2(int id2 ) throws SQLException {
	oilentity h=null;
	String sql="select * from oil where id=?";
	PreparedStatement ps=com.prepareStatement(sql);
	ps.setInt(1, id2);
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		h=new oilentity();
		h.setId(rs.getInt(1));
		h.setName(rs.getString(2));
		h.setQuantity(rs.getString(3));
		h.setPrice(rs.getString(4));
		h.setDate(rs.getString(5));
		h.setTotal(rs.getString(6));
		
	}
	return h;
}

public boolean insertdrop(storeentity p) throws SQLException {

	boolean b=false;
	String sql="insert into storage (stock,profit ) values(?,?)";
	PreparedStatement a=com.prepareStatement(sql);
	a.setString(1, p.getStock());
	a.setString(2, p.getProfit());
	int i=a.executeUpdate();
	if(i==1) {
		System.out.println("data insert");
		b=true;
		
	}

	
	
	return b;
}

public formentity checkpro(int id) throws SQLException {

	formentity z= null;
	String  sql="select * from groundnuts where id=?";
	PreparedStatement ps=com.prepareStatement(sql);
	ps.setInt(1, id);
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		z=new formentity();
		z.setId(rs.getInt(1));
		z.setName(rs.getString(2));
		z. setProduct(rs.getString(3));
		z.setQuantity(rs.getString(4));
		z.setPrice(rs.getString(5));
		z.setDate(rs.getString(6));
		z.setTime(rs.getString(7));
		z.setTotal(rs.getString(8));
		
	}
	return z;
}

public List<storeentity> fetchstore() throws SQLException{
	List<storeentity> pl= new ArrayList<storeentity>();
	storeentity a=null;
	String sql="select * from storage";
	PreparedStatement ps= com.prepareStatement(sql);
	ResultSet rs= ps.executeQuery();
	while(rs.next()) {
		a= new storeentity();
		a.setId(rs.getInt(1));
		a.setStock(rs.getString(2));
		a.setProfit(rs.getString(3));
		
		pl.add(a);
	}
	
	
	return pl;
	
	
	
	
}
public List<storeentity>udate3store(int id) throws SQLException{
	List<storeentity> m=new ArrayList<storeentity>();
	storeentity t=null;
	String sql="select * from storage where id=?";
	PreparedStatement ps=com.prepareStatement(sql);
	ps.setInt(1, id);
	ResultSet rs= ps.executeQuery();
	while(rs.next()) {
		t=new storeentity();
		t.setId(rs.getInt(1));
		t.setStock(rs.getString(2));
		t.setProfit(rs.getString(3));
		
		
		
		
	}
	return m;
	
}



public boolean udate2store(storeentity d) {
	boolean b2=false;
	try {
		
		String sql="update storage set  stock=?, profit=?  where  id=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, d.getStock());
		ps.setString(2, d.getProfit());;
		ps.setInt(3, d.getId());
		int i=ps.executeUpdate();
		if(i==1) {
			b2=true;
			
		}
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	


	return b2 ;
}

public boolean deletestore(int id) throws SQLException {
	boolean b3=false;
	String sql="delete from storage where id=?";
	PreparedStatement ps=com.prepareStatement(sql);
	ps.setInt(1, id);
	int i=ps.executeUpdate();
	if(i==1) {
		b3=true;
		
		
	}

			return b3;
		
		}
public List<storeentity>updt4(int id) throws SQLException{
	List<storeentity> m=new ArrayList<storeentity>();
	storeentity t=null;
	String sql="select * from storage where id=?";
	PreparedStatement ps=com.prepareStatement(sql);
	ps.setInt(1, id);
	ResultSet rs= ps.executeQuery();
	while(rs.next()) {
		t=new storeentity();
		t.setId(rs.getInt(1));
		t.setStock(rs.getString(2));
		t.setProfit(rs.getString(3));
		m.add(t);
		
		
	}
	return m;
	
}
public boolean udate5(storeentity d) {
	boolean b2=false;
	try {
		
		String sql="update storage set  Profit=?, stock=? where  id=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, d.getProfit());
		ps.setString(2, d.getStock());;
		ps.setInt(3, d.getId());
		int i=ps.executeUpdate();
		if(i==1) {
			b2=true;
			
		}
		
	} catch (Exception e) {
		// TODO: handle exception
	}
	
	


	return b2 ;
}

}