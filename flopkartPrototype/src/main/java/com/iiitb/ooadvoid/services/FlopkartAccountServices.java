package com.iiitb.ooadvoid.services;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import com.iiitb.ooadvoid.dao.FlopkartAccountDAO;
import com.iiitb.ooadvoid.dao.FlopkartUserDAO;
import com.iiitb.ooadvoid.pojo.FlopkartAccount;
import com.iiitb.ooadvoid.pojo.FlopkartUser;

@Path("/accounts")
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
	
	@POST
	@Path("/accountno")
	@Consumes("application/json")
	@Produces("application/json")
	public FlopkartAccount getFlopkartAccountbyAccountNo(FlopkartAccount acc)
	{
		FlopkartAccountDAO dao = new FlopkartAccountDAO();
		FlopkartAccount acc_details = dao.getFlopkartAccountByAccountno(acc.getAccountno());
		if(acc_details==null)
			return null;
		if(!(acc.encodePin(Integer.parseInt(acc.getPin())).equals(acc_details.getPin())))
			return acc;
		else
			return acc_details;
	}	
	
	@PUT
	@Path("/update/{id}")
	@Consumes("application/json")
	public Response updateFlopkartAccount(@PathParam("id") int id, FlopkartAccount acc)
	{
		FlopkartAccountDAO dao = new FlopkartAccountDAO();
		int count = dao.updateFlopkartAccount(id, acc);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}

		
}
