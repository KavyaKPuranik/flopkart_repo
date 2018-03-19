
package com.iiitb.ooadvoid.dao;

import java.util.List;

import com.iiitb.ooadvoid.pojo.FlopkartUser;

public class FlopkartUserDAO extends HibernateDAO<FlopkartUser>
{
	String entity_name = "FlopkartUser";
	
	public FlopkartUser addFlopkartUser(FlopkartUser user)
	{
		user.setPassword(user.encodePassword(user.getPassword()));
		super.add(user);
		return user;
	}

	public List<FlopkartUser> getFlopkartUsers()
	{
		return super.list(new FlopkartUser());
	}

	public FlopkartUser getFlopkartUserById(int id)
	{
		return super.find(new FlopkartUser(),id);
	}
	
	public FlopkartUser getFlopkartUserByName(String user)
	{
		return super.find(entity_name,"firstname",user);
	}
    public FlopkartUser getFlopkartUserByEmail(FlopkartUser user)
	{
		return super.find(entity_name,"email", user.getEmail());
	}
    
    public FlopkartUser getFlopkartSellerByEmail(FlopkartUser user) {
    	return super.find(entity_name,"email", user.getEmail());
    }

	public FlopkartUser getFlopkartUserByPhone(FlopkartUser user)
	{
		return super.find(entity_name,"phone", user.getPhone());
	}

	public int deleteFlopkartUser(int id)
	{
		return super.remove(entity_name,id);
	}

	public int updateFlopkartUser(int id, FlopkartUser user)
	{
		if (id <= 0)
			return 0;	
		if(user.getPassword()!=null)
			user.setPassword(user.encodePassword(user.getPassword()));
		super.update(user,id);
		return 1;
	}
}
