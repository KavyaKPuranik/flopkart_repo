
package com.iiitb.ooadvoid.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.iiitb.ooadvoid.pojo.FlopkartListingDeal;

public class FlopkartListingDealDAO extends HibernateDAO<FlopkartListingDeal>
{
	String entity_name = "FlopkartListingDeal";
	
	public FlopkartListingDeal addFlopkartListingDeal(FlopkartListingDeal item)
	{
		super.add(item);
		return item;
	}
	
	public List<FlopkartListingDeal> getTodayFlopkartListingDeals()
	{
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String todayDate = dateFormat.format(date);
		return super.findAll("FlopkartListingDeal", "startDate", todayDate);
	}
	
	public List<FlopkartListingDeal> getFlopkartListingDealsByListingId(int listingId)
	{
		List<FlopkartListingDeal> listingdeals =  super.findAll("FlopkartListingDeal", "listingid", listingId);
		return listingdeals;
	}
	
	public List<FlopkartListingDeal> getFlopkartListingDeals()
	{
		return super.list(new FlopkartListingDeal());
	}

	public FlopkartListingDeal getFlopkartListingDealById(int id)
	{
		return super.find(new FlopkartListingDeal(),id);
	}

  /*  public List<FlopkartListingDeal> getFlopkartListingDealByCategoty(FlopkartListingDeal item)
	{
		return super.findAll(entity_name,"category", item.getSubcategoryId());
	}
  */
	public int deleteFlopkartListingDeal(int id)
	{
		return super.remove(entity_name,id);
	}

	public int updateFlopkartListingDeal(int id, FlopkartListingDeal item)
	{
		if (id <= 0)
			return 0;	
		super.update(item,id);
		return 1;
	}
}
