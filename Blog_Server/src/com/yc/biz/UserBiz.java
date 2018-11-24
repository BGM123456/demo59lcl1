package com.yc.biz;

import java.util.ArrayList;
import java.util.List;

import com.yc.bean.User;
import com.yc.dao.ly.DBHelper;

public class UserBiz {
	public User login(String username,String userpwd) throws BizException {
		if(username==null || username.trim().isEmpty()){
			throw new BizException("����д�û���!");
		}
		if(userpwd==null || userpwd.trim().isEmpty()){
			throw new BizException("����д���룡");
		}
		//��ѯ���ݿ��ж��û��Ƿ����
		/*DBHelper dbHelper=new DBHelper();
		List<Object> params=new ArrayList<Object>();
		params.add(username);
		params.add(userpwd);*/
		String sql="select * from user where account=? and pwd=?";
		//Map<String, String> user=dbHelper.findMap(sql, params);
		return DBHelper.unique(sql, User.class, username,userpwd);
		
	}

	public Object find(User user) {
		String sql="select * from user where 1=1";
		ArrayList<Object> params=new ArrayList<Object>();
		if(user.getAccount()!=null&&user.getAccount().trim().isEmpty()==false){
			sql+=" and account like concat('%',?,'%')";
			params.add(user.getAccount());
		}
		if(user.getName()!=null&&user.getName().trim().isEmpty()==false){
			sql+=" and name like ?";
			params.add("%"+user.getName()+"%");
		}
		if(user.getTel()!=null&&user.getTel().trim().isEmpty()==false){
			sql+=" and tel like ?";
			params.add("%"+user.getTel()+"%");
		}
		return DBHelper.select(sql, params);
	}

	public void useradd(User user, String repwd) throws BizException {
		if(user.getName()==null||user.getName().trim().isEmpty()){
			throw new BizException("����д����!");
		}else if(user.getAccount()==null||user.getAccount().trim().isEmpty()){
			throw new BizException("����д�û���!");
		}else if(user.getPwd()==null||user.getPwd().trim().isEmpty()){
			throw new BizException("����д����!");
		}else if(user.getPwd()==repwd||repwd.equals(user.getPwd())){
		}else{
			throw new BizException("�������벻һ��!");
		}
		String sql="insert into user (name,account,tel,pwd) values(?,?,?,?)";
		DBHelper.insert(sql, user.getName(),user.getAccount(),user.getTel(),user.getPwd());
	}

	public User findById(String id) {
		return DBHelper.unique("select * from user where id=?", User.class, id);
	}

	public void save(User user) throws BizException {
		if(user.getName()==null||user.getName().trim().isEmpty()){
			throw new BizException("����д����!");
		}else if(user.getAccount()==null||user.getAccount().trim().isEmpty()){
			throw new BizException("����д�û���!");
		}
		DBHelper.update("update user set name=?,account=?,tel=? where id=?", 
				user.getName(),user.getAccount(),user.getTel(),user.getId());
	}

	public int delete(String id) {
		return DBHelper.update("delete from user where id=?", id);
	}
}
