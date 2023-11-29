<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yuyuexiugai.xls");
%>
<html>
  <head>
    <title>预约修改</title>
  </head>

  <body >
  <p>已有预约修改列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>工号</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>    <td bgcolor='#CCFFFF'>服务名称</td>    <td bgcolor='#CCFFFF'>服务类别</td>    <td bgcolor='#CCFFFF'>价格</td>    <td bgcolor='#CCFFFF'>预约时间</td>    <td bgcolor='#CCFFFF'>修改类别</td>    <td bgcolor='#CCFFFF'>预约人</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "yuyuexiugai_list.jsp?1=1"; 
    String sql =  "select * from yuyuexiugai where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("fuwumingcheng") %></td>    <td><%=map.get("fuwuleibie") %></td>    <td><%=map.get("jiage") %></td>    <td><%=map.get("yuyueshijian") %></td>    <td><%=map.get("xiugaileibie") %></td>    <td><%=map.get("yuyueren") %></td>    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=yuyuexiugai" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

