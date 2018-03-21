
	package com.iiitb.ooadvoid.services;
	import javax.ws.rs.Consumes;
	import javax.ws.rs.POST;
	import javax.ws.rs.Path;
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

		
	}

