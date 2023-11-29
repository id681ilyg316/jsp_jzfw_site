<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>预约修改</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有预约修改列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  工号：<input name="gonghao" type="text" id="gonghao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  性别：<input name="xingbie" type="text" id="xingbie" style='border:solid 1px #000000; color:#666666' size="12" />  服务名称：<input name="fuwumingcheng" type="text" id="fuwumingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  服务类别：<input name="fuwuleibie" type="text" id="fuwuleibie" style='border:solid 1px #000000; color:#666666' size="12" />  价格：<input name="jiage" type="text" id="jiage" style='border:solid 1px #000000; color:#666666' size="12" />  预约时间：<input name="yuyueshijian" type="text" id="yuyueshijian" style='border:solid 1px #000000; color:#666666' size="12" /> 修改类别：<select name='xiugaileibie' id='xiugaileibie' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="一键换工人">一键换工人</option><option value="续订">续订</option><option value="暂停">暂停</option><option value="延期">延期</option></select>  预约人：<input name="yuyueren" type="text" id="yuyueren" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yuyuexiugai_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>工号</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td bgcolor='#CCFFFF'>服务名称</td>
    <td bgcolor='#CCFFFF'>服务类别</td>
    <td bgcolor='#CCFFFF'>价格</td>
    <td bgcolor='#CCFFFF'>预约时间</td>
    <td bgcolor='#CCFFFF'>修改类别</td>
    <td bgcolor='#CCFFFF'>预约人</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
	
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yuyuexiugai"); 
    String url = "yuyuexiugai_list.jsp?1=1"; 
    String sql =  "select * from yuyuexiugai where 1=1";
	
if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}
if(request.getParameter("fuwumingcheng")=="" ||request.getParameter("fuwumingcheng")==null ){}else{sql=sql+" and fuwumingcheng like '%"+request.getParameter("fuwumingcheng")+"%'";}
if(request.getParameter("fuwuleibie")=="" ||request.getParameter("fuwuleibie")==null ){}else{sql=sql+" and fuwuleibie like '%"+request.getParameter("fuwuleibie")+"%'";}
if(request.getParameter("jiage")=="" ||request.getParameter("jiage")==null ){}else{sql=sql+" and jiage like '%"+request.getParameter("jiage")+"%'";}
if(request.getParameter("yuyueshijian")=="" ||request.getParameter("yuyueshijian")==null ){}else{sql=sql+" and yuyueshijian like '%"+request.getParameter("yuyueshijian")+"%'";}
if(request.getParameter("xiugaileibie")=="" ||request.getParameter("xiugaileibie")==null ){}else{sql=sql+" and xiugaileibie like '%"+request.getParameter("xiugaileibie")+"%'";}
if(request.getParameter("yuyueren")=="" ||request.getParameter("yuyueren")==null ){}else{sql=sql+" and yuyueren like '%"+request.getParameter("yuyueren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>
    <td><%=map.get("xingming") %></td>
    <td align='center'><%=map.get("xingbie") %></td>
    <td><%=map.get("fuwumingcheng") %></td>
    <td><%=map.get("fuwuleibie") %></td>
    <td><%=map.get("jiage") %></td>
    <td><%=map.get("yuyueshijian") %></td>
    <td><%=map.get("xiugaileibie") %></td>
    <td><%=map.get("yuyueren") %></td>
    <td align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=yuyuexiugai" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
	
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="yuyuexiugai_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="yuyuexiugai_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="yuyuexiugai_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

