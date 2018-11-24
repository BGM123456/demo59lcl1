package com.yc.ctroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.yc.bean.User;
import com.yc.biz.BizException;
import com.yc.biz.UserBiz;
import com.yc.dao.ly.BeanUtils;

@WebServlet("/user.s")
public class Userservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	UserBiz uBiz=new UserBiz();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String op=request.getParameter("op");
		if("login".equals(op)){
			Login(request,response);
		}else if("query".equals(op)){
			Query(request,response);
		}else if("add".equals(op)){
			Add(request,response);
		}else if("find".equals(op)){
			Find(request,response);
		}else if("save".equals(op)){
			Save(request,response);
		}else if("delete".equals(op)){
			Delete(request,response);
		}
	}

	private void Delete(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String id=request.getParameter("id");
		uBiz.delete(id);
	}

	private void Save(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		User user=BeanUtils.asBean(request, User.class);
		String msg;
		try {
			uBiz.save(user);
			msg="用户信息保存成功！";
		} catch (BizException e) {
			e.printStackTrace();
			msg=e.getMessage();
		}
		response.getWriter().append(msg);
	}

	private void Find(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		String id=request.getParameter("id");
		User user=uBiz.findById(id);
		request.setCharacterEncoding("utf-8");
		//将user返回给页面
		String userString=JSON.toJSONString(user);
		response.getWriter().append(userString);
	}

	private void Add(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		//将参数加载到user对象中
		User user=BeanUtils.asBean(request, User.class);
		String repwd=request.getParameter("repwd");//确认密码
		//调用UserBiz.add方法,将用户添加到数据库中
		try {
			uBiz.useradd(user,repwd);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
		}finally {
			Query(request, response);
		}
		
	}

	private void Query(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		User user=BeanUtils.asBean(request, User.class);
		request.setAttribute("userList",uBiz.find(user));
		String op=request.getParameter("op");
		if("add".equals(op)){
			request.removeAttribute("account");
		}
		request.getRequestDispatcher("manage-user.jsp").forward(request, response);
	}

	private void Login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username=request.getParameter("username");
		String userpwd=request.getParameter("userpwd");
		User user=null;
		try {
			user = uBiz.login(username, userpwd);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			//失败
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		if(user==null){
			request.setAttribute("msg", "账号或密码错误");
			//request.setAttribute("msg1", "yes");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			request.getSession().setAttribute("loginedUser", user);
			response.sendRedirect("index.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
