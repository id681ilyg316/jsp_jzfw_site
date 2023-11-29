<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>预约</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"yuangongxinxi");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("yuyueren",(String)request.getSession().getAttribute("username"),"yuangongxinxi");
  String gonghao="";  	String xingming="";  	String xingbie="";  	
  gonghao=(String)mlbdq.get("gonghao");  	xingming=(String)mlbdq.get("xingming");  	xingbie=(String)mlbdq.get("xingbie");  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="yuyue_add.jsp?id=<%=id%>&fuwumingcheng="+document.form1.fuwumingcheng.value;
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","否");
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"yuyue",ext,true,false,""); 
%>

  <body >
 <form  action="yuyue_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加预约:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">工号：</td><td><input name='gonghao' type='text' id='gonghao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelgonghao' /></td></tr><script language="javascript">document.form1.gonghao.value='<%=gonghao%>';</script>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';</script>		<tr><td  width="200">性别：</td><td><input name='xingbie' type='text' id='xingbie' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script>		<tr><td>服务名称：</td><td><%=Info.getselectsl("fuwumingcheng","fuwuxiangmu","fuwumingcheng")%>&nbsp;*<label id='clabelfuwumingcheng' /></td></tr>		<tr><td  width="200">服务类别：</td><td><input name='fuwuleibie' type='text' id='fuwuleibie' style='border:solid 1px #000000; color:#666666' ></td></tr>		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' style='border:solid 1px #000000; color:#666666' ></td></tr>		<tr><td width="200">预约时间：</td><td><input name='yuyueshijian' type='text' id='yuyueshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td  width="200">预约人：</td><td><input name='yuyueren' type='text' id='yuyueren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("fuwumingcheng")==null || request.getParameter("fuwumingcheng").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("fuwumingcheng",request.getParameter("fuwumingcheng"),"fuwuxiangmu"); 
%>
<script language="javascript">
document.form1.fuwumingcheng.value="<%=mmm.get("fuwumingcheng")%>";document.form1.fuwuleibie.value="<%=mmm.get("fuwuleibie")%>";document.form1.jiage.value="<%=mmm.get("jiage")%>";//suilafuzhi

</script>
<%
}
%><!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var gonghaoobj = document.getElementById("gonghao"); if(gonghaoobj.value==""){document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入工号</font>";return false;}else{document.getElementById("clabelgonghao").innerHTML="  "; } 	var fuwumingchengobj = document.getElementById("fuwumingcheng"); if(fuwumingchengobj.value==""){document.getElementById("clabelfuwumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入服务名称</font>";return false;}else{document.getElementById("clabelfuwumingcheng").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


