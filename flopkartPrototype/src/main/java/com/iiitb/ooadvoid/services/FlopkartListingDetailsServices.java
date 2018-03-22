
	package com.iiitb.ooadvoid.services;
	import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
	import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import com.iiitb.ooadvoid.pojo.FlopkartListingDetails;
import com.iiitb.ooadvoid.dao.FlopkartListingDetailsDAO;

	@Path("/details")
	public class FlopkartListingDetailsServices 
	{
		@POST
		@Path("/create")
		@Consumes("application/json")
		public Response addFlopkartListingDetails(FlopkartListingDetails item)
		{		
				item.setItemId(item.getItemId());
				item.setAttr_name(item.getAttr_name());
				item.setAttr_val(item.getAttr_val());
				
				
			
			FlopkartListingDetailsDAO dao = new FlopkartListingDetailsDAO();
			dao.addFlopkartListingDetails(item);

			return Response.ok().build();
		}

		
		
		@GET
		@Path("/itemid/{id}")
		@Produces("application/json")
		public List<FlopkartListingDetails> getListingDetailsByItemId(@PathParam("id") String id)
		{
			FlopkartListingDetailsDAO dao = new FlopkartListingDetailsDAO();
			List<FlopkartListingDetails> listing_details = dao.getListingDetailsByItemId(id);
			if(listing_details==null)
				return null;
			else
				return listing_details;
		}
		
		
	}

