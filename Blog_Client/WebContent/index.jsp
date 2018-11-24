<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/nprogress.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="images/icon.png">
<link rel="shortcut icon" href="images/favicon.ico">
<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/nprogress.js"></script>
<script src="js/jquery.lazyload.min.js"></script>
<!--[if gte IE 9]>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>
<body class="user-select">
	<!-- 包含头部页面 -->
	<jsp:include page="/public/head.jsp"></jsp:include>

	<!-- 这是主题部分 -->	
	<section class="container">
		<div class="content-wrap">
			<div class="content">
				<!--轮播图 -->
				<jsp:include page="/public/sowingmap.jsp"></jsp:include>
				
				<!-- 引入推荐页面 -->
				<jsp:include page="/public/top1.jsp"></jsp:include>
				
				<div class="title">
					<h3>最新发布</h3>
					<div class="more">
						<a title="IT技术笔记" href="show.jsp">IT技术笔记</a>
						<a title="源码分享" href="show.jsp">源码分享</a>
					</div>
				</div>
				
				<article class="excerpt excerpt-1" style="">
					<a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）"
						target="_blank"><img class="thumb"
						data-original="images/201610181739277776.jpg"
						src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"
						style="display: inline;"></a>
					<header>
						<a class="cat" href="#" title="MZ-NetBlog主题">MZ-NetBlog主题<i></i></a>
						<h2>
							<a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank">
								用DTcms做一个独立博客网站（响应式模板）</a>
						</h2>
					</header>
					<p class="meta">
						<time class="time">
							<i class="glyphicon glyphicon-time"></i> 2016-10-14
						</time>
						<span class="views"><i class="glyphicon glyphicon-eye-open"></i>
							216</span> <a class="comment" href="##comment" title="评论"
							target="_blank"><i class="glyphicon glyphicon-comment"></i>
							4</a>
					</p>
					<p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms
						V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms
						V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
				</article>
				<article class="excerpt excerpt-2" style="">
					<a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）"
						target="_blank"><img class="thumb"
						data-original="images/201610181739277776.jpg"
						src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"
						style="display: inline;"></a>
					<header>
						<a class="cat" href="#" title="MZ-NetBlog主题">MZ-NetBlog主题<i></i></a>
						<h2>
							<a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank">用DTcms做一个独立博客网站（响应式模板）</a>
						</h2>
					</header>
					<p class="meta">
						<time class="time">
							<i class="glyphicon glyphicon-time"></i> 2016-10-14
						</time>
						<span class="views"><i class="glyphicon glyphicon-eye-open"></i>216</span>
						<a class="comment" href="##comment" title="评论" target="_blank"><i
							class="glyphicon glyphicon-comment"></i>4</a>
					</p>
					<p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms
						V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms
						V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
				</article>
				<article class="excerpt excerpt-3" style="">
					<a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）"
						target="_blank"><img class="thumb"
						data-original="images/201610181739277776.jpg"
						src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"
						style="display: inline;"></a>
					<header>
						<a class="cat" href="#" title="MZ-NetBlog主题">MZ-NetBlog主题<i></i></a>
						<h2>
							<a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank">用DTcms做一个独立博客网站（响应式模板）</a>
						</h2>
					</header>
					<p class="meta">
						<time class="time">
							<i class="glyphicon glyphicon-time"></i> 2016-10-14
						</time>
						<span class="views"><i class="glyphicon glyphicon-eye-open"></i>
							216</span> <a class="comment" href="##comment" title="评论"
							target="_blank"><i class="glyphicon glyphicon-comment"></i>
							4</a>
					</p>
					<p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms
						V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms
						V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
				</article>
				<article class="excerpt excerpt-4" style="">
					<a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）"
						target="_blank"><img class="thumb"
						data-original="images/201610181739277776.jpg"
						src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"
						style="display: inline;"></a>
					<header>
						<a class="cat" href="#" title="MZ-NetBlog主题">MZ-NetBlog主题<i></i></a>
						<h2>
							<a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank">用DTcms做一个独立博客网站（响应式模板）</a>
						</h2>
					</header>
					<p class="meta">
						<time class="time">
							<i class="glyphicon glyphicon-time"></i> 2016-10-14
						</time>
						<span class="views"><i class="glyphicon glyphicon-eye-open"></i>
							216</span> <a class="comment" href="##comment" title="评论"
							target="_blank"><i class="glyphicon glyphicon-comment"></i>
							4</a>
					</p>
					<p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms
						V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms
						V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
				</article>
				<article class="excerpt excerpt-5" style="">
					<a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）"
						target="_blank"><img class="thumb"
						data-original="images/201610181739277776.jpg"
						src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"
						style="display: inline;"></a>
					<header>
						<a class="cat" href="#" title="MZ-NetBlog主题">MZ-NetBlog主题<i></i></a>
						<h2>
							<a href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank">用DTcms做一个独立博客网站（响应式模板）</a>
						</h2>
					</header>
					<p class="meta">
						<time class="time">
							<i class="glyphicon glyphicon-time"></i> 2016-10-14
						</time>
						<span class="views"><i class="glyphicon glyphicon-eye-open"></i>
							216</span> <a class="comment" href="##comment" title="评论"
							target="_blank"><i class="glyphicon glyphicon-comment"></i>
							4</a>
					</p>
					<p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms
						V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms
						V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
				</article>
				<nav class="pagination" style="display: none;">
					<ul>
						<li class="prev-page"></li>
						<li class="active"><span>1</span></li>
						<li><a href="?page=2">2</a></li>
						<li class="next-page"><a href="?page=2">下一页</a></li>
						<li><span>共 2 页</span></li>
					</ul>
				</nav>
			</div>
		</div>
		
		
		<!-- 搜索、最新评论 -->
		<jsp:include page="/public/latestcomments.jsp"></jsp:include>
	
	</section>
	
	<!-- 包含尾部页面 -->
	<jsp:include page="/public/footer.jsp"></jsp:include>
	
</body>
</html>
