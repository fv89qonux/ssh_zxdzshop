﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="js/style.css" />
<style>
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 92%
	</style>
<script type="text/javascript" src="js/boxOver.js"></script>

 </head>
<body>

<div id="main_container">
  <div class="top_bar"></div>
	<div id="header">
	
	 <div id="divstr"><br/><h2>欢迎来到网上商城</h2><h3><script language=JavaScript >
var today = new Date();
var strDate = ( today.getYear() + "年" + (today.getMonth() + 1) + "月" + today.getDate() + "日");

var n_day = today.getDay();
var ww;

switch (n_day)
{
case 0:{ww =  "星期日";} break;
case 1:{ww =  "星期一";} break;
case 2:{ww =  "星期二";} break;
case 3:{ww =  "星期三";} break;
case 4:{ww =  "星期四";} break;
case 5:{ww =  "星期五";} break;
case 6:{ww =  "星期六";} break;
case 7:{ww =  "星期日";} break;
}
strDate="今天是:" + ww+"</font>";
document.write(strDate);
 </script></h3></div>
	  <!-- end of oferte_content-->
</div>
    
   <div id="main_content"> 
            <div id="menu_tab">
            <div class="left_menu_corner"></div>
                    <ul class="menu">
                         <li><a href="GoIndexAction.action" class="nav1">首页</a></li>
                         <li class="divider"></li>
                         <li><a href="GoIndexAction.action" class="nav2">在线购物</a></li>
                         <li class="divider"></li>
                         <li><a href="showCar.jsp" class="nav5">我的购物车</a></li>
                         <li class="divider"></li>
                         
                         <c:if test="${empty sessionScope.user.username}">
                         <li class="divider"></li>
                         <li><a href="login.jsp" class="nav3">用户登录</a></li>
                         <li class="divider"></li>                         
                         <li><a href="register.jsp" class="nav6">用户注册 </a></li>

                         </c:if>
                         <li class="divider"></li>
                    </ul>

             <div class="right_menu_corner"></div>
            </div><!-- end of menu tab -->
    
    </div> 
    
    <div class="crumb_navigation">
    导航:  <span class="current"><a href="GoIndexAction.action">首页</a>&gt;&gt;用户登录</span>
    
    </div>
    
    
    <table border="0" cellpadding="0" cellspacing="0" align="center" width=100% height="400px" bgcolor="#e9e7e7">
    <tr>
    <td width=20%>
    
    </td>
    
    <td class="center_content" width=100% height=400px align=center >
   <table>
    <tr>
    <td align="center"><h2>登录成功</h2></td>
    
    </tr>
    <tr><td align=center height=30><h3>正在跳转到主页！若没有跳转<a href="GoIndexAction.action">点击这里</a></h3></td>
     </tr>
    </table>
        <% response.setHeader("refresh","2;url=init.jsp"); %>
	</td>
    </tr>
    </table>
  <div class="footer" align="center"><br />&copy;&nbsp;&nbsp;|&nbsp;XXXX&nbsp;|&nbsp;版权所有&nbsp;|&nbsp;网上商城系统<br/><a href="admin/login.jsp" target="_blank">后台管理</a></div>
</div>
</body>
</html>
