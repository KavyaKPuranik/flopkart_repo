package com.iiitb.ooadvoid.services;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import com.iiitb.ooadvoid.pojo.FlopkartListingDeal;
import com.iiitb.ooadvoid.dao.FlopkartListingDealDAO;

@Path("/listingDeals")
public class FlopkartListingDealServices 
{

	@GET
	@Produces("application/json")
	public List<FlopkartListingDeal> getFlopkartListingDeals()
	{
		FlopkartListingDealDAO dao = new FlopkartListingDealDAO();
		List<FlopkartListingDeal> listingdeal = dao.getFlopkartListingDeals();
		return listingdeal;
	}
	
	@GET
	@Path("/today")
	@Produces("application/json")
	public List<FlopkartListingDeal> getTodayFlopkartListingDeals()
	{
		FlopkartListingDealDAO dao = new FlopkartListingDealDAO();
		List<FlopkartListingDeal> listingdeal = dao.getTodayFlopkartListingDeals();
		return listingdeal;
	}

	@GET
	@Path("/{id}")
	@Produces("application/json")
	public FlopkartListingDeal getFlopkartListingDeal(@PathParam("id") int id)
	{
		FlopkartListingDealDAO dao = new FlopkartListingDealDAO();
		FlopkartListingDeal listingdeal = dao.getFlopkartListingDealById(id);
		return listingdeal;
	}

	@GET
	@Path("/listing/{id}")
	@Produces("application/json")
	public List<FlopkartListingDeal> getFlopkartListingDealsByListingId(@PathParam("id") int listingid)
	{
		FlopkartListingDealDAO dao = new FlopkartListingDealDAO();
		List<FlopkartListingDeal> deals = dao.getFlopkartListingDealsByListingId(listingid);
		return deals;
	}
	
	@POST
	@Path("/create")
	@Consumes("application/json")
	public Response addFlopkartListingDeal(FlopkartListingDeal listingdeal)
	{
		listingdeal.setDealid(listingdeal.getDealid());
		listingdeal.setEnddate(listingdeal.getEnddate());
		listingdeal.setStartdate(listingdeal.getStartdate());
		listingdeal.setListingid(listingdeal.getListingid());
		FlopkartListingDealDAO dao = new FlopkartListingDealDAO();
		dao.addFlopkartListingDeal(listingdeal);
		return Response.ok().build();
	}

	@PUT
	@Path("/update/{id}")
	@Consumes("application/json")
	public Response updateFlopkartListingDeal(@PathParam("id") int id, FlopkartListingDeal listingdeal)
	{
		FlopkartListingDealDAO dao = new FlopkartListingDealDAO();
		int count = dao.updateFlopkartListingDeal(id, listingdeal);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}

	@DELETE
	@Path("/delete/{id}")
	@Consumes("application/json")
	public Response deleteFlopkart_User(@PathParam("id") int id)
	{
		FlopkartListingDealDAO dao = new FlopkartListingDealDAO();
		int count = dao.deleteFlopkartListingDeal(id);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}
}
