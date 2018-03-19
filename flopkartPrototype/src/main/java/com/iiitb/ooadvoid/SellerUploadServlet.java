package com.iiitb.ooadvoid;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.iiitb.ooadvoid.pojo.FlopkartItem;
import com.iiitb.ooadvoid.pojo.FlopkartListing;
import com.iiitb.ooadvoid.pojo.FlopkartListingDetails;

@WebServlet("/SellerUploadServlet")
public class SellerUploadServlet extends HttpServlet
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public static final String BASE_URI = "http://localhost:8080/flopkartPrototype/webapi/";
	public static final String PATH_NAME = "listings/create";
	public static final String PATH_NAME2 = "items/create";
	public static final String PATH_NAME3 = "details/create";
	String listingName = "";
	Integer sub_cat_content = 0;
	String brand = "";
	Integer qty = 0;
	Integer price = 0;
	Integer dis = 0;
	String clr = "";
	String mfd = "";
	String desptn = "";
	String pic_url = "";
	Integer sellerid= 0;
	Integer cnt= 0;
	Integer x = 1;
	Integer y = 1;
	String[] key;
	String[] val;
	@Override
	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{	
		
		

		try
		{	
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			List<?> items = null;
			items = upload.parseRequest(request);
			Iterator<?> itr = items.iterator();
			while (itr.hasNext())
			{	
				FileItem item = (FileItem) itr.next();
				if (item.isFormField())
				{	
					
					
					String name = item.getFieldName();
					if (name.equals("listingname"))
					{
						listingName = (String) item.getString();
						System.out.println("listingANME"+listingName);
					}
					

					else if (name.equals("subcatId"))
					{
						sub_cat_content =  Integer.parseInt(item.getString());
						System.out.println("SUB CAT CONTENT"+sub_cat_content);
						
					}
					else if (name.equals("sellerid"))
					{
						sellerid =  Integer.parseInt(item.getString());
						System.out.println("SUB CAT sellrid"+sellerid);
						
					}

					else if (name.equals("brand"))
					{
						brand = (String) item.getString();
						
					}

					else if (name.equals("qty"))
					{
						qty =  Integer.parseInt(item.getString());
						System.out.println("QTY"+qty);
						
					}

					else if (name.equals("price"))
					{
						price =  Integer.parseInt(item.getString());
						
					}

				else if (name.equalsIgnoreCase("dis"))
					{
						dis = Integer.parseInt(item.getString());
					}

				
					else if (name.equals("clr"))
					{
						clr = (String) item.getString();
						
					}

					else if (name.equals("mfd"))
					{
						mfd = (String) item.getString();
						
						
					}

					else if (name.equals("desptn"))
					{
						desptn = (String) item.getString();
						
					}
					else if (name.equals("cnt"))
					{
						cnt =  Integer.parseInt(item.getString());
						key = new String[cnt+1];
						val = new String[cnt+1];
						System.out.println("cnt"+cnt);
						
					}
					
					else if (name.equals("key"+x))
					{
							key[x]=  (String) item.getString();
							System.out.println("key:"+ key[x] );
							x++;
							
					}
					else if (name.equals("val"+y))
					{
							val[y]=  (String) item.getString();
							System.out.println("key:"+ val[y] );
							y++;
					}
				}
				else
				{   
					pic_url = item.getName();
					AccessProperties ap = new AccessProperties();
					item.write(new File(ap.getServerPath() + pic_url));
				}
			}
		x=1;
		y=1;
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		Client client = ClientBuilder.newClient();
		WebTarget target = client.target(BASE_URI+PATH_NAME);
		FlopkartListing item = new FlopkartListing();
		
		item.setListingName(listingName);
		item.setImgUrl(pic_url);
		item.setSubcategoryId(sub_cat_content);
		item.setBrand(brand);
		item.setQuantity(qty);
		item.setPrice(price);
		item.setDiscount(dis);
		item.setSellerid(sellerid);
		item.setColour(clr);
		item.setManufacture_Date(mfd);
		item.setDescription(desptn);
		
		
		
	//	target.request(MediaType.APPLICATION_JSON).post(Entity.entity(item, MediaType.APPLICATION_JSON));
		
		Invocation.Builder invocationBuilder = target.request(MediaType.APPLICATION_JSON);
		Response response1 = invocationBuilder.post(Entity.entity(item, MediaType.APPLICATION_JSON));

		
	//	System.out.println(response1.readEntity(String.class));
		FlopkartListing fl = response1.readEntity(FlopkartListing.class);
		Integer id = fl.getId();
		System.out.println("Id"+ id);
		
		WebTarget target2 = client.target(BASE_URI+PATH_NAME2);
		FlopkartItem item1 = new FlopkartItem();
		
		item1.setListingid(id);
		item1.setStatus("Available");
		for(int i = 1 ; i <= qty; i++) {
			System.out.println("qty loop");
			System.out.println(i);
			target2.request(MediaType.APPLICATION_JSON).post(Entity.entity(item1, MediaType.APPLICATION_JSON));
		}
		
		WebTarget target3 = client.target(BASE_URI+PATH_NAME3);
		FlopkartListingDetails listDet = new FlopkartListingDetails();
		
		
		for(int j = 1 ; j <= cnt; j++) {
			System.out.println("details loop");
			System.out.println("id:"+ id);
			System.out.println("key:"+ key[j] );
			System.out.println("val:"+ val[j] );
			listDet.setListingId(id);
			listDet.setAttr_name(key[j]);
			listDet.setAttr_val(val[j]);
		
					
			
			target3.request(MediaType.APPLICATION_JSON).post(Entity.entity(listDet, MediaType.APPLICATION_JSON));
		}
		//response.sendRedirect("sellerItemInsert.jsp?id="+id);
		response.sendRedirect("sellerHub.jsp?");
	}
	
}
