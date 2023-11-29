<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>服务类别</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="fuwuleibie_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"fuwuleibie",ext,true,false,""); 
%>

  <body >
 <form  action="fuwuleibie_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加服务类别:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">服务类别：</td><td><input name='fuwuleibie' type='text' id='fuwuleibie' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelfuwuleibie' /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var fuwuleibieobj = document.getElementById("fuwuleibie"); if(fuwuleibieobj.value==""){document.getElementById("clabelfuwuleibie").innerHTML="&nbsp;&nbsp;<font color=red>请输入服务类别</font>";return false;}else{document.getElementById("clabelfuwuleibie").innerHTML="  "; } 
	var fuwuleibieobj = document.getElementById("fuwuleibie");  
if(fuwuleibieobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=fuwuleibie&col=fuwuleibie&value="+fuwuleibieobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelfuwuleibie").innerHTML="&nbsp;&nbsp;<font color=red>服务类别已存在</font>";  
return false;
}else{document.getElementById("clabelfuwuleibie").innerHTML="  ";  
}  
} 
	


return true;   
}   
popheight=450;
</script>  


