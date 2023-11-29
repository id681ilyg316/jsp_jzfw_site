<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>





<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>预约</TITLE>
<!--bixanjxiqxi-->
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>


<META content="MSHTML 6.00.2900.6058" name=GENERATOR>
</HEAD>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"yuangongxinxi");
  String gonghao="";
  	String xingming="";
  	String xingbie="";
  	
  gonghao=(String)mlbdq.get("gonghao");
  	xingming=(String)mlbdq.get("xingming");
  	xingbie=(String)mlbdq.get("xingbie");
  	

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var gonghaoobj = document.getElementById("gonghao"); if(gonghaoobj.value==""){document.getElementById("clabelgonghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入工号</font>";return false;}else{document.getElementById("clabelgonghao").innerHTML="  "; } 
	var fuwumingchengobj = document.getElementById("fuwumingcheng"); if(fuwumingchengobj.value==""){document.getElementById("clabelfuwumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入服务名称</font>";return false;}else{document.getElementById("clabelfuwumingcheng").innerHTML="  "; } 
	
}
function gow()
{
	document.location.href="yuyueadd.jsp?id=<%=id%>&fuwumingcheng="+document.form1.fuwumingcheng.value;
}
</script>
<!--hxsglxiangdxongjxs-->

<BODY>


<%@ include file="qttop.jsp"%>

<TABLE cellSpacing=0 cellPadding=0 width=1120 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD width=5>&nbsp;</TD>
    <TD vAlign=top width=230>
     <%@ include file="qtleft.jsp"%>
      </TD>
    <TD vAlign=top width=10>&nbsp;</TD>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=bottom height=40>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=50 height=40><IMG height=35 
                  src="qtimages/B0039.gif" 
                  width=30></TD>
                <TD width=817><span class="red"><strong>预约</strong></span></TD>
                </TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD bgColor=#dadada height=1></TD></TR>
        <TR>
          <TD bgColor=#f6f6f6 height=4></TD></TR>
        <TR>
          <TD bgColor=#ffffff height=6>
		  
		 
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//qiuji
//wxfladd
ext.put("issh","否");
ext.put("iszf","否");
String sql="update yuyue set iszf='是' where yuyueren='"+request.getSession().getAttribute("username")+"' ";
//youzhifu
//jitihuan
 }
new CommDAO().insert(request,response,"yuyue",ext,true,false,""); 
%>
   <form  action="yuyueadd.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">工号：</td><td><input name='gonghao' type='text' id='gonghao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelgonghao' /></td></tr><script language="javascript">document.form1.gonghao.value='<%=gonghao%>';</script>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';</script>
		<tr><td  width="200">性别：</td><td><input name='xingbie' type='text' id='xingbie' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script>
		<tr><td>服务名称：</td><td><%=Info.getselectsl("fuwumingcheng","fuwuxiangmu","fuwumingcheng")%>&nbsp;*<label id='clabelfuwumingcheng' /></td></tr>
		<tr><td  width="200">服务类别：</td><td><input name='fuwuleibie' type='text' id='fuwuleibie' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' style='border:solid 1px #000000; color:#666666' ></td></tr>
		<tr><td width="200">预约时间：</td><td><input name='yuyueshijian' type='text' id='yuyueshijian' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">预约人：</td><td><input name='yuyueren' type='text' id='yuyueren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>
						
						
						
		  </TD>
        </TR></TBODY></TABLE>
      </TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%>
<!-- dfexnxxiaxng -->
</BODY></HTML>

<%
if(request.getParameter("fuwumingcheng")==null || request.getParameter("fuwumingcheng").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("fuwumingcheng",request.getParameter("fuwumingcheng"),"fuwuxiangmu"); 
%>
<script language="javascript">
document.form1.fuwumingcheng.value="<%=mmm.get("fuwumingcheng")%>";
document.form1.fuwuleibie.value="<%=mmm.get("fuwuleibie")%>";
document.form1.jiage.value="<%=mmm.get("jiage")%>";
//suilafuzhi

</script>
<%
}
%>
<!--suxilxatxihuxan-->
