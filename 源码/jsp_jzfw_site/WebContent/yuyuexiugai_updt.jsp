<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>预约修改</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"yuyuexiugai",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yuyuexiugai"); 

%>
  <form  action="yuyuexiugai_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改预约修改:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>工号：</td><td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>性别：</td><td><input name='xingbie' type='text' id='xingbie' value='<%= mmm.get("xingbie")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>服务名称：</td><td><input name='fuwumingcheng' type='text' id='fuwumingcheng' value='<%= mmm.get("fuwumingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>服务类别：</td><td><input name='fuwuleibie' type='text' id='fuwuleibie' value='<%= mmm.get("fuwuleibie")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>预约时间：</td><td><input name='yuyueshijian' type='text' id='yuyueshijian' value='<%= mmm.get("yuyueshijian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>修改类别：</td><td><select name='xiugaileibie' id='xiugaileibie'><option value="一键换工人">一键换工人</option><option value="续订">续订</option><option value="暂停">暂停</option><option value="延期">延期</option></select></td></tr><script language="javascript">document.form1.xiugaileibie.value='<%=mmm.get("xiugaileibie")%>';</script>
     <tr><td>预约人：</td><td><input name='yuyueren' type='text' id='yuyueren' value='<%= mmm.get("yuyueren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


