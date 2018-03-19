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

import com.iiitb.ooadvoid.pojo.FlopkartItem;
import com.iiitb.ooadvoid.pojo.FlopkartSubcategory;
import com.iiitb.ooadvoid.dao.FlopkartItemDAO;
import com.iiitb.ooadvoid.dao.FlopkartSubcategoryDAO;

@Path("/items")
public class FlopkartItemServices 
{

	@GET
	@Produces("application/json")
	public List<FlopkartItem> getFlopkart_Items()
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		List<FlopkartItem> items = dao.getFlopkartItems();
		return items;
	}

	@GET
	@Path("/availableListing/{id}")
	@Produces("text/plain")
	public int countFlopkartAvailableItemsByListingId(@PathParam("id") int listingid)
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		List<FlopkartItem> items = dao.getFlopkartAvailableItemsByListingId(listingid);
		if(items.isEmpty()) {
			return 0;
		}
		return items.size();
	}
	
	
	@POST
	@Path("/create")
	@Consumes("application/json")
	public Response addFlopkartItem(FlopkartItem item)
	{
			item.setListingid(item.getListingid());
		
		FlopkartItemDAO dao = new FlopkartItemDAO();
		dao.addFlopkartItem(item);

		return Response.ok().build();
	}

	@PUT
	@Path("/update/{id}")
	@Consumes("application/json")
	public Response updateFlopkart_Item(@PathParam("id") int id, FlopkartItem item)
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		int count = dao.updateFlopkart_Item(id, item);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}

	@DELETE
	@Path("/delete/{id}")
	@Consumes("application/json")
	public Response deleteFlopkart_Item(@PathParam("id") int id)
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		int count = dao.deleteFlopkartItem(id);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}
	

	
	@GET
	@Path("/listing/{id}")
	@Produces("application/json")
	public List<FlopkartItem> getFlopkartAvailableItemsByListingId(@PathParam("id") int id)
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		List<FlopkartItem> items = dao.getFlopkartAvailableItemsByListingId(id);
		if(items==null)
			return null;
		else
			return items;
	}
}
