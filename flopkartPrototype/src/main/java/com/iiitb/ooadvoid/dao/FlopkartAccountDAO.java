package com.iiitb.ooadvoid.dao;

import java.util.List;

import com.iiitb.ooadvoid.pojo.FlopkartAccount;
import com.iiitb.ooadvoid.pojo.FlopkartUser;

public class FlopkartAccountDAO extends HibernateDAO<FlopkartAccount>{
	String entity_name = "FlopkartAccount";
	
	public List<FlopkartAccount> getFlopkartAccounts()
	{
		return super.list(new FlopkartAccount());
	}
	
	public FlopkartAccount getFlopkartAccountById(int id)
	{
		System.out.println("x");
		
		
		return super.find(new FlopkartAccount(),id);
	}
	
	public FlopkartAccount getFlopkartAccountByAccountno(int accountno)
	{
		//System.out.println("x");
		return super.find(entity_name,"accountno",accountno);
		
	}
	
	public FlopkartAccount getFlopkartAccountByUserId(int id)
	{
		return super.find(new FlopkartAccount(),id);
	}
}
