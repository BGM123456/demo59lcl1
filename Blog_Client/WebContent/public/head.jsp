<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="header">
<nav class="navbar navbar-default" id="navbar">
<div class="container">
  <div class="header-topbar hidden-xs link-border">
	<ul class="site-nav topmenu">
	  <li><a href="#" >标签云</a></li>
		<li><a href="#" rel="nofollow" >读者墙</a></li>
		<li>
			<a href="#" title="RSS订阅" >
				<i class="fa fa-rss"></i> RSS订阅
			</a>
		</li>
	</ul>
			 勤记录 懂分享</div>
  <div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
		data-target="#header-navbar" aria-expanded="false"> 
		<span class="sr-only"></span> 
		<span class="icon-bar"></span> 
		<span class="icon-bar"></span> 
		<span class="icon-bar"></span> 
	</button>
	<h1 class="logo hvr-bounce-in">
		<a href="#" title="木庄网络博客">
			<img src="images/201610171329086541.png" alt="木庄网络博客">
		</a>
	</h1>
  </div>
  <div class="collapse navbar-collapse" id="header-navbar">
	<form class="navbar-form visible-xs" action="/Search" method="post">
	  <div class="input-group">
		<input type="text" name="keyword" class="form-control" placeholder="请输入关键字" 
			maxlength="20" autocomplete="off">
		<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
	</form>
	
	<ul class="nav navbar-nav navbar-right">
	  <li><a data-cont="木庄网络博客" title="木庄网络博客" href="index.jsp">首页</a></li>
	  <li><a data-cont="列表页" title="列表页" href="list.jsp">列表页</a></li>
	  <li><a data-cont="列表页" title="查看详情页" href="show.jsp">查看详情</a></li>
	  <li><a data-cont="IT技术笔记" title="IT技术笔记" href="#" >IT技术笔记</a></li>
	  <li><a data-cont="源码分享" title="源码分享" href="#" >源码分享</a></li>
	  <li><a data-cont="资讯分享" title="资讯分享" href="#" >资讯分享</a></li>
	</ul>
	
  </div>
</div>
</nav>
</header>
