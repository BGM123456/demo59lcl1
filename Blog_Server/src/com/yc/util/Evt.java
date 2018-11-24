package com.yc.util;

import com.yc.dao.DBHelper;

public class Evt {
	public static void main(String[] args) {
		DBHelper db=new DBHelper();
		System.out.println(db.find("select * from columns", null));
	}
}
