<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>预约修改</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"yuyue");
 String gonghao="";  	String xingming="";  	String xingbie="";  	String fuwumingcheng="";  	String fuwuleibie="";  	String jiage="";  	String yuyueshijian="";  	
 gonghao=(String)mlbdq.get("gonghao");  	xingming=(String)mlbdq.get("xingming");  	xingbie=(String)mlbdq.get("xingbie");  	fuwumingcheng=(String)mlbdq.get("fuwumingcheng");  	fuwuleibie=(String)mlbdq.get("fuwuleibie");  	jiage=(String)mlbdq.get("jiage");  	yuyueshijian=(String)mlbdq.get("yuyueshijian");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="yuyuexiugai_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("issh","否");



new CommDAO().insert(request,response,"yuyuexiugai",ext,true,false,""); 

}

%>

  <body >
 <form  action="yuyuexiugai_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加预约修改:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">工号：</td><td><input name='gonghao' type='text' id='gonghao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.gonghao.value='<%=gonghao%>';document.form1.gonghao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">性别：</td><td><input name='xingbie' type='text' id='xingbie' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';document.form1.xingbie.setAttribute("readOnly",'true');</script>		<tr><td  width="200">服务名称：</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.fuwumingcheng.value='<%=fuwumingcheng%>';document.form1.fuwumingcheng.setAttribute("readOnly",'true');</script>		<tr><td  width="200">服务类别：</td><td><input name='fuwuleibie' type='text' id='fuwuleibie' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.fuwuleibie.value='<%=fuwuleibie%>';document.form1.fuwuleibie.setAttribute("readOnly",'true');</script>		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jiage.value='<%=jiage%>';document.form1.jiage.setAttribute("readOnly",'true');</script>		<tr><td  width="200">预约时间：</td><td><input name='yuyueshijian' type='text' id='yuyueshijian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yuyueshijian.value='<%=yuyueshijian%>';document.form1.yuyueshijian.setAttribute("readOnly",'true');</script>		<tr><td>修改类别：</td><td><select name='xiugaileibie' id='xiugaileibie'><option value="一键换工人">一键换工人</option><option value="续订">续订</option><option value="暂停">暂停</option><option value="延期">延期</option></select></td></tr>		<tr><td  width="200">预约人：</td><td><input name='yuyueren' type='text' id='yuyueren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	


return true;   
}   
popheight=450;
</script>  


