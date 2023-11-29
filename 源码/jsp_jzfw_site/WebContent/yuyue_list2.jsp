<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>预约</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有预约列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  工号：<input name="gonghao" type="text" id="gonghao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  服务名称：<input name="fuwumingcheng" type="text" id="fuwumingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  预约人：<input name="yuyueren" type="text" id="yuyueren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td width="44" bgcolor='#CCFFFF'>工号</td>
    <td width="44" bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
    <td width="84" bgcolor='#CCFFFF'>服务名称</td>
    <td width="84" bgcolor='#CCFFFF'>服务类别</td>
    <td width="44" bgcolor='#CCFFFF'>价格</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>预约时间</td>
    <td width="68" bgcolor='#CCFFFF'>预约人</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>是否支付</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="100" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="98" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"yuyue"); 
    String url = "yuyue_list2.jsp?1=1"; 
    String sql =  "select * from yuyue where yuyueren='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("gonghao")=="" ||request.getParameter("gonghao")==null ){}else{sql=sql+" and gonghao like '%"+request.getParameter("gonghao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if(request.getParameter("fuwumingcheng")=="" ||request.getParameter("fuwumingcheng")==null ){}else{sql=sql+" and fuwumingcheng like '%"+request.getParameter("fuwumingcheng")+"%'";}
if(request.getParameter("yuyueren")=="" ||request.getParameter("yuyueren")==null ){}else{sql=sql+" and yuyueren like '%"+request.getParameter("yuyueren")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("gonghao") %></td>
 <td><%=map.get("xingming") %></td>
 <td><%=map.get("xingbie") %></td>
 <td><%=map.get("fuwumingcheng") %></td>
 <td><%=map.get("fuwuleibie") %></td>
 <td><%=map.get("jiage") %></td>
 <td><%=map.get("yuyueshijian") %></td>
 <td><%=map.get("yuyueren") %></td>
 <td width='80' align='center'><a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=shengchengdingdan"><font color='red'>已支付</font></a></td>
 <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="100" align="center"><%=map.get("addtime") %></td>
    <td width="98" align="center"> <a href="yuyue_detail.jsp?id=<%=map.get("id")%>">详细</a><a href="yuyuexiugai_add.jsp?id=<%=map.get("id")%>"> 修改操作</a>  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

