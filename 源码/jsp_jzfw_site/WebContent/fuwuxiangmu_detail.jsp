<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>服务项目详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"fuwuxiangmu");
     %>
  服务项目详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'><%=m.get("bianhao")%></td><td width='11%'>服务名称：</td><td width='39%'><%=m.get("fuwumingcheng")%></td></tr><tr><td width='11%'>服务类别：</td><td width='39%'><%=m.get("fuwuleibie")%></td><td width='11%'>价格：</td><td width='39%'><%=m.get("jiage")%></td></tr><tr><td width='11%'>服务简介：</td><td width='39%'><%=m.get("fuwujianjie")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


