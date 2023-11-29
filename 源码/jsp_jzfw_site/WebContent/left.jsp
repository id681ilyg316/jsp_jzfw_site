<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
<head>
<title>left</title><script src="js/menu.js"></script>
<link rel="stylesheet" href="css.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	background-color: #fbf6f2;
	
}
.STYLE2 {color: #FFFFFF}
.STYLE3 {color: #6d1d0a}
-->
</style></head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
	
	<tr>
		<td ><table width="184"  border="0" cellpadding="0" cellspacing="0"  id="__01">
		
		 <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
               
                <tr>
                  <td width="184" background="images/hsg8.gif"    id="submenu7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td height="119" colspan="2" align="center"><table width="91%" height="81" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="22" align="center"><img src="images/siteico.gif" width="16" height="16"></td>
                              <td >系统作者：xxxxxx</td>
                            </tr>
                            <tr>
                              <td width="36" height="22" align="center"><img src="images/hsg6.gif"></td>
                              <td ><p>指导老师：xxxxx<a href="yhzhgl.jsp" target="mainFrame"></a></p>                                </td>
                            </tr>
                            <tr>
                              <td width="36" height="22" align="center"><img src="images/hsg7.gif"></td>
                              <td >所在学校：xxxxx</td>
                            </tr>
                          </table>                        </td>
                      </tr>
                      
                  </table></td>
                </tr>
              </table></td>
          </tr>
		  
		  
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('1')" style="cursor:pointer;">
                <td width="184"  background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                   <tr>
                      <td width="14%"  height="25" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%" height="25"><span class="STYLE3"><strong>系统用户管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="184"  style="display:none"  id="show1">
				<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
					 <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
					  <td ><a href="yhzhgl.jsp" target="mainFrame">管理员管理</a></td>
					</tr>
					
					<tr>
					 <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
					  <td ><a href="yonghuzhuce_list.jsp" target="mainFrame">客户信息管理</a></td>
					</tr>
					
					<tr>
					 <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
					  <td ><a href="mod.jsp" target="mainFrame">个人密码管理</a></td>
					</tr>
				  </table>				 </td>
              </tr>
              
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('2')" style="cursor:pointer;">
                <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>员工信息管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="184"  style="display:none"  id="show2"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="yuangongxinxi_add.jsp" target="mainFrame">员工信息添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="yuangongxinxi_list.jsp" target="mainFrame">员工信息查询</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('3')" style="cursor:pointer;">
                <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>服务类别管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="184"   style="display:none"  id="show3"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="fuwuleibie_add.jsp" target="mainFrame">服务类别添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="fuwuleibie_list.jsp" target="mainFrame">服务类别查询</a></td>
                    </tr>
                </table></td>
              </tr>
            
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('4')" style="cursor:pointer;">
                <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>服务项目管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="184"   style="display:none"  id="show4"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="fuwuxiangmu_add.jsp" target="mainFrame">服务项目添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="fuwuxiangmu_list.jsp" target="mainFrame">服务项目查询</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('5')" style="cursor:pointer;">
                <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>预约信息管理</strong></span></td>
                    </tr>
                </table></td>
              </tr>

              <tr>
                <td width="184"   style="display:none"  id="show5"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                   
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="yuyue_list.jsp" target="mainFrame">预约信息查询</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table>			</td>
          </tr>		  <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('6')" style="cursor:pointer;">
                  <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>留言管理</strong></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="184"   style="display:none"  id="show6"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                      <td ><a href="liuyanban_list.jsp" target="mainFrame">留言管理</a></td>
                    </tr>
                  </table></td>
                </tr>
              </table>			  </td>
          </tr>
					  
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
		  
		       <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('8')" style="cursor:pointer;">
                  <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>家政新闻管理</strong></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="184"   style="display:none"  id="show8"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="xinwentongzhi_add.jsp?lb=家政新闻" target="mainFrame">家政新闻添加</a></td>
                      </tr>
                     
					 <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="xinwentongzhi_list.jsp?lb=家政新闻" target="mainFrame">家政新闻查询</a></td>
                      </tr>
					  
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
		       <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('10')" style="cursor:pointer;">
                  <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                      <td width="14%"  height="26" align="center" valign="bottom">&nbsp;</td>
                      <td width="86%"><span class="STYLE3"><strong>系统管理</strong></span></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="184"    id="show10"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="youqinglianjie_add.jsp" target="mainFrame">友情连接添加</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="youqinglianjie_list.jsp" target="mainFrame">友情连接查询</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/hsg5.gif"></td>
                        <td ><a href="dx.jsp?lb=系统公告" target="mainFrame">系统公告设置</a></td>
                      </tr>
                     
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
         <!-- <tr>
            <td>
              <table id="__01" width="184" border="0" cellpadding="0" cellspacing="0">
                <tr >
                  <td width="184" background="images/hsg4.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="90%"  height="26" align="center" valign="bottom"><span class="STYLE3"><strong>系统版权</strong></span></td>
                        <td width="10%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="184"    id="submenu7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="2" align="center"><p>&nbsp;</p>
                        </td>
                      </tr>
                      
                  </table></td>
                </tr>
              
              </table></td>
          </tr>-->
        </table></td>
	</tr>
	
</table>
</body>
</html>