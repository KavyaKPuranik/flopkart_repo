package com.iiitb.ooadvoid.services;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import com.iiitb.ooadvoid.dao.FlopkartAccountDAO;
import com.iiitb.ooadvoid.dao.FlopkartCategoryDAO;
import com.iiitb.ooadvoid.pojo.FlopkartAccount;
import com.iiitb.ooadvoid.pojo.FlopkartCategory;

@Path("/account")
public class FlopkartAccountServices {
		
	@GET
	@Produces("application/json")
	public List<FlopkartAccount> getFlopkartAccountss()
	{
		FlopkartAccountDAO dao = new FlopkartAccountDAO();
		List<FlopkartAccount> account = dao.getFlopkartAccounts();
		return account;
	}
	
	@GET
	@Path("/accountno/{account}")
	@Produces("application/json")
	public FlopkartAccount getFlopkartAccount(@PathParam("account") int accountno)
	{
		FlopkartAccountDAO dao = new FlopkartAccountDAO();
		FlopkartAccount accountval = dao.getFlopkartAccountByAccountno(accountno);
		return accountval;
	}
		
}
