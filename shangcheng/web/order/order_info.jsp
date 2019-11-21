<%@ page import="com.xinhua.shangcheng.pojo.Cart" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="com.xinhua.shangcheng.pojo.Item" %>
<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>生成订单 - 当当网</title>
		<link href="../css/login.css" rel="stylesheet" type="text/css" />
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<%@include file="../common/head1.jsp"%>
		<div class="login_step">
			生成订单骤:
			<span class="red_bold">1.确认订单</span> > 2.填写送货地址 > 3.订单成功
		</div>
		<div class="fill_message">

			<table class="tab_login">
				<tr>
					<td valign="top" class="w1" style="text-align: left">
						<b>序号</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>商品名称</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>商品单价</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>商品数量</b>
					</td>
					<td valign="top" class="w1" style="text-align: left">
						<b>小计</b>
					</td>
				</tr>

				<!-- 订单开始 -->
				<%Cart cart=(Cart)session.getAttribute("cart");
					List<Item>list=cart.getItems();
					double sum=0;
					for(int j=0;j<list.size();j++){
						sum+=list.get(j).getBook().getDang_price()*list.get(j).getQty();
					}
					for(int i=0;i<list.size();i++){


				%>
					<tr>
						<td valign="top">
							<%=i+1%>
						</td>
						<td valign="top">
							<%=list.get(i).getBook().getProduct_name()%>
						</td>
						<td valign="top">
							<%=list.get(i).getBook().getDang_price()%>
						</td>
						<td valign="top">
							<%=list.get(i).getQty()%>
						</td>
						<td valign="top">
							<%=list.get(i).getBook().getDang_price()*list.get(i).getQty()%>
						</td>
					</tr>
				<%}%>
				<!-- 订单结束 -->
				<tr>
					<td valign="top" class="w1" style="text-align: left" colspan="5">
						<b>总价￥<%=sum%>></b>
					</td>
				</tr>
			</table>
			<br />
			<br />
			<br />
			<div class="login_in">
				<a href="../cart/cart_list.jsp"><input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="取消" /></a>
			
				<a href="address.doo"><input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="下一步" /></a>
		
			</div>

		</div>
		<%@include file="../common/foot1.jsp"%>
	</body>
</html>

