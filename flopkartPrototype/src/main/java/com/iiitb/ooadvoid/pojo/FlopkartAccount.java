package com.iiitb.ooadvoid.pojo;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class FlopkartAccount {
		private Integer id;
		private Integer userid;
		private Integer accountno;
		private Integer balance;
		private String pin;
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public Integer getUserid() {
			return userid;
		}
		public void setUserid(Integer userid) {
			this.userid = userid;
		}
		public Integer getBalance() {
			return balance;
		}
		public void setBalance(Integer balance) {
			this.balance = balance;
		}
		public String getPin() {
			return pin;
		}
		public void setPin(String pin) {
			this.pin = pin;
		}
		

		public String encodePin(Integer pin)
		{
			StringBuffer sb = new StringBuffer();
			try
			{
			MessageDigest mDigest = MessageDigest.getInstance("SHA1");
			byte[] result = mDigest.digest(String.valueOf(pin).getBytes());
			for (int i = 0; i < result.length; i++)
			{
				sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
			}
			}
			catch (NoSuchAlgorithmException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return sb.toString();
		}
		

		public Integer getAccountno() {
			return accountno;
		}
		public void setAccountno(Integer accountno) {
			this.accountno = accountno;
		}
		
}
