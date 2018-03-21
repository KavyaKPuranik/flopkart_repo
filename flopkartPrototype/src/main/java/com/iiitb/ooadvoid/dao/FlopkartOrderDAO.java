package com.iiitb.ooadvoid.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import com.iiitb.ooadvoid.pojo.FlopkartOrder;

public class FlopkartOrderDAO extends HibernateDAO<FlopkartOrder>
{
String entity_name = "FlopkartOrder";
		
	public List<FlopkartOrder> getFlopkartOrder()
	{
		return super.list(new FlopkartOrder());
	}
	public FlopkartOrder addFlopkartOrder(FlopkartOrder order)
	{
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String todayDate = dateFormat.format(date);
		order.setOrderDate(todayDate);
		super.add(order);
//		order = super.find(entity_name , 
//				"orderId" , String.valueOf(order.getOrderId()),
//				"userId" , String.valueOf(order.getUserId()));
		return order;
	}
	
	public List<FlopkartOrder> getFlopkartOrderByUserId(Integer UserId)
	{		
		return super.findAll(entity_name,"userid", UserId);
	}
	
	public List<FlopkartOrder> getFlopkartOrderByOrderId(Integer orderId)
	{		
		return super.findAll(entity_name,"orderid", orderId);
	}
	
	
	
	public List<FlopkartOrder> getFlopkartOrderByItemId(String itemId)
	{		
		return super.findAll(entity_name,"ItemId", itemId);
	}
	
	public int deleteFlopkartOrder(int id)
	{
		return super.remove(entity_name,id);
	}

	public int updateFlopkartOrder(int id, FlopkartOrder order)
	{
		if (id <= 0)
			return 0;	
		super.update(order,id);
		return 1;
	}
}
