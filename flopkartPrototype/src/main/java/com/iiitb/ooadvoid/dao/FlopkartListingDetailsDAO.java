package com.iiitb.ooadvoid.dao;

import java.util.List;

import com.iiitb.ooadvoid.pojo.FlopkartListingDetails;

public class FlopkartListingDetailsDAO extends HibernateDAO<FlopkartListingDetails>
{
	String entity_name = "FlopkartListingDetails";
	
	public FlopkartListingDetails addFlopkartListingDetails(FlopkartListingDetails item)
	{
		super.add(item);
		return item;
	}
	
	
	public List<FlopkartListingDetails> getFlopkartListingDetailss()
	{
		return super.list(new FlopkartListingDetails());
	}

	public FlopkartListingDetails getFlopkartListingDetailsById(int id)
	{
		return super.find(new FlopkartListingDetails(),id);
	}

	
	public List<FlopkartListingDetails> getListingDetailsByItemId(String itemId)
	{		
		return super.findAll(entity_name,"itemId", itemId);
	}
   

	public int deleteFlopkartListingDetails(int id)
	{
		return super.remove(entity_name,id);
	}

	public int updateFlopkart_Item(int id, FlopkartListingDetails item)
	{
		if (id <= 0)
			return 0;	
		super.update(item,id);
		return 1;
	}
}

