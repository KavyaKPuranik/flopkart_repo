package com.iiitb.ooadvoid.dao;

import java.util.List;
import com.iiitb.ooadvoid.pojo.FlopkartOrder;
import com.iiitb.ooadvoid.pojo.FlopkartSubcategory;

public class FlopkartOrderDAO extends HibernateDAO<FlopkartOrder>
{
String entity_name = "FlopkartOrder";
		
	public List<FlopkartOrder> getFlopkartOrder()
	{
		return super.list(new FlopkartOrder());
	}
	public FlopkartOrder addFlopkartOrder(FlopkartOrder order)
	{
		super.add(order);
		return order;
	}
/*	public FlopkartOrder getFlopkartOrderById(int id)
	{
		return super.find(new FlopkartOrder(),id);
	}*/
	public List<FlopkartOrder> getFlopkartOrderByUserId(Integer UserId)
	{
		
		return super.findAll(entity_name,"userid", UserId);
	}
   /* public List<FlopkartOrder> getFlopkartOrderByorderDate(String orderDate)
	{
		return super.findAll(entity_name,"orderDate", orderDate);
	}
*/
	public int deleteFlopkartOrder(int id)
	{
		return super.remove(entity_name,id);
	}

	public int updateFlopkart_Order(int id, FlopkartOrder order)
	{
		if (id <= 0)
			return 0;	
		super.update(order,id);
		return 1;
	}
}
