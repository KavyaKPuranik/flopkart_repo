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
		
		return super.find(new FlopkartAccount(),id);
	}
	
	public FlopkartAccount getFlopkartAccountByAccountno(int accountno)
	{
		return super.find(entity_name,"accountno",accountno);
		
	}
	
	public FlopkartAccount getFlopkartAccountByUserId(int id)
	{
		return super.find(new FlopkartAccount(),id);
	}

	public int updateFlopkartAccount(int id, FlopkartAccount acc)
	{
		if (id <= 0)
			return 0;	
		if(acc.getPin()!=null)
			acc.setPin(acc.encodePin(Integer.parseInt(acc.getPin())));
		super.update(acc,id);
		return 1;
	}
}
