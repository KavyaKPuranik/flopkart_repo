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

import com.iiitb.ooadvoid.pojo.FlopkartOrder;
import com.iiitb.ooadvoid.dao.FlopkartOrderDAO;


@Path("/orders")
public class FlopkartOrderServices 
{

	@GET
	@Produces("application/json")
	public List<FlopkartOrder> getFlopkart_Orders()
	{
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		List<FlopkartOrder> orders = dao.getFlopkartOrder();
		return orders;
	}

	@GET
	@Path("/user/{id}")
	@Produces("application/json")
	public List<FlopkartOrder> getFlopkartbyUserId(@PathParam("id") int Userid)
	{
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		List<FlopkartOrder> order_details = dao.getFlopkartOrderByUserId(Userid);
		if(order_details==null)
			return null;
		else
			return order_details;
	}

	@GET
	@Path("/order/{id}")
	@Produces("application/json")
	public List<FlopkartOrder> getFlopkartbyOrderId(@PathParam("id") int orderId)
	{
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		List<FlopkartOrder> order_details = dao.getFlopkartOrderByOrderId(orderId);
		if(order_details==null)
			return null;
		else
			return order_details;
	}
	
	@GET
	@Path("/item/{id}")
	@Produces("application/json")
	public List<FlopkartOrder> getFlopkartbyItemId(@PathParam("id") String Itemid)
	{
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		List<FlopkartOrder> order_details = dao.getFlopkartOrderByItemId(Itemid);
		if(order_details==null)
			return null;
		else
			return order_details;
	}
	/*@POST
	@Path("/categoty")
	@Consumes("application/json")
	@Produces("application/json")
	public FlopkartOrder getFlopkartOrderByCategoty(FlopkartOrder order)
	{
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		FlopkartOrder order_details = (FlopkartOrder) dao.getFlopkartOrderByCategoty(item);
		return order_details;
	}	
	*/
	
	@POST
	@Path("/create")
	@Consumes("application/json")
	public Response addFlopkartOrder(FlopkartOrder order)
	{

//			order.setUserId(order.getUserId());
//			order.setUserId(order.getUserId());
//			order.setShippingAddress(order.getShippingAddress());
//			order.setStatus(order.getStatus());
//			order.setOrderDate(order.getOrderDate());
//			order.setTotalAmount(order.getTotalAmount());
		
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		dao.addFlopkartOrder(order);

		return Response.ok().build();
	}

	@PUT
	@Path("/update/{id}")
	@Consumes("application/json")
	public Response updateFlopkartOrder(@PathParam("id") int id, FlopkartOrder order)
	{
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		int count = dao.updateFlopkartOrder(id, order);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}


	@PUT
	@Path("/update/orderid")
	@Consumes("application/json")
	public Response updateFlopkartOrderbyOrderId(FlopkartOrder order)
	{
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		List<FlopkartOrder> order_details = dao.getFlopkartOrderByOrderId(order.getOrderId());
		if(order_details==null)
			return null;
		else
		{
			for(FlopkartOrder o : order_details)
			{
				dao.updateFlopkartOrder(o.getId(), order);
//				if (count == 0)
//				{
//					return Response.status(Response.Status.BAD_REQUEST).build();
//				}
			}
//			return Response.ok().build();
		}
		return Response.ok().build();
	}

	@DELETE
	@Path("/delete/{id}")
	@Consumes("application/json")
	public Response deleteFlopkart_Order(@PathParam("id") int id)
	{
		FlopkartOrderDAO dao = new FlopkartOrderDAO();
		int count = dao.deleteFlopkartOrder(id);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}
}
