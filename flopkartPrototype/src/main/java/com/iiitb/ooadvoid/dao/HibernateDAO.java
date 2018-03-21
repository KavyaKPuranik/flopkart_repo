package com.iiitb.ooadvoid.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class HibernateDAO<E>
{

	protected Class<? extends E> daoType;
	Session session;
	Transaction tx;

	public void add(E entity)
	{
		session = SessionUtil.getSession();
		tx = session.beginTransaction();
		session.persist(entity);
		session.flush();
		tx.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	public List<E> list(E ent)
	{

		session = SessionUtil.getSession();
		session.flush();
		Query query = session.createQuery("from "+ent.getClass().getName());
		List<E> entity = query.list();
		session.flush();
		session.close();
		return entity;
	}
	
	public E find(E entity, int id)
	{
		session = SessionUtil.getSession();
		session.flush();
		tx = session.beginTransaction();
		@SuppressWarnings("unchecked")
		E ent = (E) session.get(entity.getClass(), new Integer(id));
		tx.commit();
		session.flush();
		session.close();
		return ent;
	}
	
	public void update(E entity, int id)
	{
		session = SessionUtil.getSession();
		tx = session.beginTransaction();
        ArrayList<Field>  fields = new ArrayList<Field>();
        try
        {
            Field[] allFields = entity.getClass().getDeclaredFields();
        	for (Field each : allFields) 
        	{
                Field field = entity.getClass().getDeclaredField(each.getName());
                field.setAccessible(true);

                Object value = field.get(entity);
//                T<Integer> = new T<Integer>(12);
                if(value==null)
                	System.out.println(field.getType());
                else if(field.getName()!="id")
	                fields.add(field);
            }
        } 
        catch (NoSuchFieldException e) 
        {
			e.printStackTrace();
		} 
        catch (SecurityException e) 
        {
			e.printStackTrace();
		} 
        catch (IllegalArgumentException e) 
        {
			e.printStackTrace();
		}
        catch (IllegalAccessException e) 
        {
			e.printStackTrace();
		}
		update(entity, id, fields);
		tx.commit();
		session.flush();
		session.close();
	}

	public void update(E entity, int id, List<Field> fields)
	{
		try
		{
			String conjunction = "";
			String set_clause = "";
			String hql ="";
			int i=0;
			for(Field p :fields)
			{
				set_clause += conjunction+p.getName() +" = :param"+i;
				i++;
				conjunction=", ";
			}
			hql = "update "+entity.getClass().getName()+" set "+set_clause+" where id = :id";
			session.flush();
			Query query = session.createQuery(hql);
			i=0;
			for(Field p :fields)
			{
				query.setParameter("param"+i, p.get(entity));
				i++;
			}
			query.setParameter("id", id);
			query.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public int remove(String entity_name, int key)
	{
		session = SessionUtil.getSession();
		tx = session.beginTransaction();
		session.flush();
		String hql = "delete from "+entity_name+" where id = :id";
		Query query = session.createQuery(hql);
		query.setInteger("id", key);
		int rowCount = query.executeUpdate();
		tx.commit();
		session.flush();
		session.close();
		return rowCount;
	}

	@SuppressWarnings("unchecked")
	public E find(String entity_name, String param, String val)
	{
		session = SessionUtil.getSession();
		session.flush();
		String hql = "from "+ entity_name + " where "+param+" = :val";
		Query query = session.createQuery(hql);
		query.setParameter("val", val);
		List<E> entity = query.list();
		session.flush();
		session.close();
		if (entity.size() == 0)
			return null;
		return entity.get(0);
	}
	
	public E find(String entity_name, String param, int val)
	{
		session = SessionUtil.getSession();
		session.flush();
		String hql = "from "+ entity_name + " where "+param+" = :val";
		Query query = session.createQuery(hql);
		query.setParameter("val", val);
		@SuppressWarnings("unchecked")
		List<E> entity = query.list();
		session.flush();
		session.close();
		if (entity.size() == 0)
			return null;
		return entity.get(0);
	}
	@SuppressWarnings("unchecked")
	public E find(String entity_name, String param1, String val1, String param2, String val2)
	{
		session = SessionUtil.getSession();
		session.flush();
		String hql = "from "+ entity_name + " where "+param1+" = :val1" + " and "+param2+" = :val2";
		Query query = session.createQuery(hql);
		query.setParameter("val1", val1);
		query.setParameter("val2", val2);
		List<E> entity = query.list();
		session.flush();
		session.close();
		if (entity.size() == 0)
			return null;
		return entity.get(0);
	}
	
	@SuppressWarnings("unchecked")
	public List<E> findAll(String entity_name, String param1, int val1)
	{
		session = SessionUtil.getSession();
		session.flush();
		String hql = "from "+ entity_name + " where "+param1+" = :val1";
		Query query = session.createQuery(hql);
		query.setParameter("val1", val1);
		List<E> entity = query.list();
		session.flush();
		session.close();
		return entity;
	}
	
	@SuppressWarnings("unchecked")
	public List<E> findAll(String entity_name, String param1, String val1)
	{
		session = SessionUtil.getSession();
		session.flush();
		String hql = "from "+ entity_name + " where "+param1+" = :val1";
		Query query = session.createQuery(hql);
		query.setParameter("val1", val1);
		List<E> entity = query.list();
		session.flush();
		session.close();
		return entity;
	}
	
	@SuppressWarnings("unchecked")
	public List<E> findAll(String entity_name, String param1, int val1, String param2, int val2)
	{
		session = SessionUtil.getSession();
		session.flush();
		String hql = "from "+ entity_name + " where "+param1+" = :val1" + " and "+param2+" = :val2";
		Query query = session.createQuery(hql);
		query.setParameter("val1", val1);
		query.setParameter("val2", val2);
		List<E> entity = query.list();
		session.flush();
		session.close();
		return entity;
	}
	
	@SuppressWarnings("unchecked")
	public List<E> findAll(String entity_name, String param1, int val1, String param2, String val2)
	{
		session = SessionUtil.getSession();
		session.flush();
		String hql = "from "+ entity_name + " where "+param1+" = :val1" + " and "+param2+" = :val2";
		Query query = session.createQuery(hql);
		query.setParameter("val1", val1);
		query.setParameter("val2", val2);
		List<E> entity = query.list();
		session.flush();
		session.close();
		return entity;
	}

}