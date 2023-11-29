<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
 




<TABLE cellSpacing=0 cellPadding=0 width=1120 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD height=5></TD>
    <TD height=5></TD>
    <TD height=5></TD></TR>
  <TR>
    <TD width=5>&nbsp;</TD>
    <TD height=74>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=20><img height=74 alt="" 
            src="qtimages/B0003.gif" 
width=183></TD>
          <TD style="BACKGROUND-IMAGE: url(qtimages/B0002.gif)" 
          width=30>&nbsp;</TD>
          <TD style="BACKGROUND-IMAGE: url(qtimages/B0002.gif)" vAlign=top>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD>
                <TD>&nbsp;</TD></TR>
              <TR>
                <TD height=17>&nbsp;</TD>
                <TD vAlign=top align=middle width=63 height=17>&nbsp;</TD>
                <TD width=15 height=17>&nbsp;</TD>
                <TD vAlign=top align=middle width=63 height=17>&nbsp;</TD>
                <TD width=15 height=17>&nbsp;</TD>
                <TD class=indexnavigate vAlign=top align=middle width=63 
                height=17><A class=white 
                  style="BEHAVIOR: url(#default#homepage)" 
                  onclick="javascript:this.style.behavior='url(#default#homepage)';this.setHomePage('http://cny8.taobao.com');return(false);" 
                  href="http://cny8.taobao.com/#">设为首页</A></TD>
                <TD width=15 height=17>&nbsp;</TD>
                <TD class=indexnavigate vAlign=top align=middle width=63 
                height=17><A class=white 
                  href="javascript:window.external.AddFavorite('http://cny8.taobao.com',%20'家政服务系统')" 
                  target=_self>加入收藏</A></TD>
                <TD width=15 height=17>&nbsp;</TD>
                <TD class=indexnavigate vAlign=top align=middle width=63 
                height=17>客服中心</TD>
                <TD width=15 height=17>&nbsp;</TD>
                <TD class=indexnavigate vAlign=top align=middle width=63 
                height=17>支付方式</TD>
                <TD width=15 height=17>&nbsp;</TD></TR>
              <TR>
                <TD vAlign=bottom align=right colSpan=12 
                  height=30> 欢迎登陆我站，希望能给你带来好心情，其他话语请您自己修改，谢谢合作！（注：此处文字您可以在qttop.jsp源码中自己修改）&nbsp;&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
    <TD width=5>&nbsp;</TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD>
      <TABLE style="BACKGROUND-IMAGE: url(qtimages/B0005.gif)" cellSpacing=0 
      cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=8><IMG height=32 alt="" 
            src="qtimages/B0004.gif" width=8></TD>
          <TD vAlign=center align=middle><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="red">
            <tr>
              <td align="center"><strong><a href="index.jsp"><font  class="STYLE1">首页</font></a></strong></td>
			   <td align="center"><strong><a href="userreg.jsp"><font  class="STYLE1">客户注册</font></a></strong></td>
              <td align="center"><strong><a href="fuwuxiangmulist.jsp"><font  class="STYLE1">服务项目</font></a></strong></td>
			      <td align="center"><strong><a href="yuangongxinxilisttp.jsp"><font  class="STYLE1">服务人员</font></a></strong></td>
              
             
              <td align="center"><strong><a href="news.jsp?lb=家政新闻"><font  class="STYLE1">家政新闻</font></a></strong></td>
			  <td align="center"><strong><a href="lyblist.jsp"><font  class="STYLE1">在线留言</font></a></strong></td>
              <td align="center"><strong><a href="login.jsp"><font  class="STYLE1">后台管理</font></a></strong></td>
            </tr>
          </table></TD>
          <TD align=right width=5><IMG height=32 alt="" 
            src="qtimages/B0006.gif" 
        width=8></TD></TR></TBODY></TABLE></TD>
    <TD>&nbsp;</TD></TR>
  <TR>
    <TD height=5></TD>
    <TD height=147 background="qtimages/banner.gif"><table width="48%" height="51" border="0" align="left">
      <tr>
        <td><div style="font-family:宋体; color:#E32C0C; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 27px; margin-top:5pt">
            <div align="center" >家政服务系统</div>
        </div></td>
      </tr>
    </table></TD>
    <TD height=5></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=1120 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD width=5>&nbsp;</TD>
    <TD width=5><IMG height=52 alt="" 
      src="qtimages/B0082.gif" width=11></TD>
    <TD style="BACKGROUND-IMAGE: url(qtimages/B0084.gif)">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
        <FORM id=searchform name=searchform 
        onsubmit="" action=news.jsp
        method=post>
        <TBODY>
        <TR>
          <TD width=71 height="40" align=middle>站内搜索</TD>
          <TD width=87><select name="lb" style="width:80px; height:20px; border:solid 1px #000000; color:#666666">
           <%
						    for(HashMap m:new CommDAO().select("select distinct(leibie) as ss from xinwentongzhi")){
							%>
							<option value="<%=m.get("ss") %>"><%=m.get("ss") %></option>
							<%
							}
						   %>
          </select></TD>
          <TD width=241>关键字：
<input 
            name=keyword class=fourline-BDBDBD id="keyword" size=25 maxlength=30 /></TD>
          <TD width=249><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image src="qtimages/B0042.gif" 
            name=imageField> &nbsp;</TD>
          <TD width=436>&nbsp;&nbsp;&nbsp;</TD>
        </TR></FORM></TABLE></TD>
    <TD align=right width=8><IMG height=52 alt="" 
      src="qtimages/B0083.gif" width=11></TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>

