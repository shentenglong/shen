<%@ page import="com.xinhua.shangcheng.pojo.Cart" %>
<%@ page import="java.util.List" %>
<%@ page import="com.xinhua.shangcheng.pojo.Item" %>
<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>当当图书 – 全球最大的中文网上书店</title>
		<link href="../css/book.css" rel="stylesheet" type="text/css" />
		<link href="../css/second.css" rel="stylesheet" type="text/css" />
		<link href="../css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="../css/shopping_vehicle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript">
            function valinumber(id){

                var input = document.getElementById("pro_"+id);

                var number=input.value;

                window.location="update.doo?id="+id+"&qty="+number;

            }
		</script>
	</head>

	<body>
		<br />
		<br />
		<div class="my_shopping">
			<img class="pic_shop" src="../images/pic_myshopping.gif" />

		</div>

		<div id="div_choice" class="choice_merch">
			<%Cart cart= (Cart) session.getAttribute("cart");
			    double sum=0;
			    double price=0;
				List<Item>list=cart.getItems();
				List<Item>delete=cart.getDeletes();
				for(int j=0;j<list.size();j++){
				    sum+=list.get(j).getBook().getDang_price()*list.get(j).getQty();
				    double cha=list.get(j).getBook().getFixed_price()*list.get(j).getQty()-list.get(j).getBook().getDang_price()*list.get(j).getQty();
				    price+=cha;
				}
				if(list.size()!=0){
			%>
			<h2 id="cart_tips">
				您已选购以下商品
			</h2>
			<div class="choice_bord">
				<table class="tabl_buy" id="tbCartItemsNormal">
					<tr class="tabl_buy_title">
						<td class="buy_td_6">
							<span>&nbsp;</span>
						</td>
						<td>
							<span class="span_w1">商品名</span>
						</td>
						<td class="buy_td_5">
							<span class="span_w2">市场价</span>
						</td>
						<td class="buy_td_4">
							<span class="span_w3">当当价</span>
						</td>
						<td class="buy_td_1">
							<span class="span_w2">数量</span>
						</td>
						<td class="buy_td_2">
							<span>变更数量</span>
						</td>
						<td class="buy_td_1">
							<span>删除</span>
						</td>
					</tr>
					<tr class='objhide' over="no">
						<td colspan="8">
							&nbsp;
						</td>
					</tr>
					<%for(int i=0;i<list.size();i++){
					    Item item=list.get(i);
					%>
                      <!-- 购物列表开始 -->
						<tr class='td_no_bord'>
							<td style='display: none'>
								<%=item.getBook().getIsbn()%>
							</td>
							<td class="buy_td_6">
								<span class="objhide"><img /> </span>
							</td>
							<td>
								<a href="#"><%=item.getBook().getProduct_name()%></a>
							</td>
							<td class="buy_td_5">
								<span class="c_gray">￥<%=item.getBook().getFixed_price()%></span>
							</td>
							<td class="buy_td_4">
								&nbsp;&nbsp;
								<span>￥<%=item.getBook().getDang_price()%></span>
							</td>
							<td class="buy_td_1">
								&nbsp;&nbsp;<%=item.getQty()%>
							</td>

							<td >
								<input class="del_num" type="text" size="3" maxlength="4" id="pro_<%=item.getBook().getId()%>"/>
								<a href="javascript:;" onclick="valinumber(<%=item.getBook().getId()%>)">变更</a>
							</td>
							<td>
								<a href="delete.doo?id=<%=item.getBook().getId()%>">删除</a>
							</td>
						</tr>
					<%} %>

					<!-- 购物列表结束 -->
				</table>
<%} else {%>
				<div id="div_no_choice" >
					<div class="choice_title"></div>
					<div class="no_select">
						您还没有挑选商品
					</div>
				</div>
<%}%>
				<div class="choice_balance">
					<div class="select_merch">
						<a href='../main/main.jsp'> 继续挑选商品>></a>
					</div>
					<div class="total_balance">
						<%if(list.size()!=0){%>
						<div class="save_total">
							您共节省：
							<span class="c_red"> ￥<span id="total_economy"><%=price%></span>
							</span>
							<span id='total_vip_economy' class='objhide'> ( 其中享有优惠： <span
								class="c_red"> ￥<span id='span_vip_economy'>0.00</span> </span>
								) </span>
							<span style="font-size: 14px">|</span>
							<span class="t_add">商品金额总计：</span>
							<span class="c_red_b"> ￥<span id='total_account'><%=sum%></span>
							</span>
						</div>
						<div id="balance" class="balance">
							<a name='checkout' href="../order/order_info.jsp" >
								<img src="../images/butt_balance.gif" alt="结算" border="0" title="结算" />
							</a>
						</div>
						<%}%>
					</div>
				</div>
			</div>
		</div>

		<!-- 用户删除恢复区 -->

<%if(delete.size()!=0){%>
		<div id="divCartItemsRemoved" class="del_merch">
			<div class="del_title">
				您已删除以下商品，如果想重新购买，请点击“恢复”
			</div>
			<table class=tabl_del id=del_table>
				<tbody>

      <%for(int i=0;i<delete.size();i++){
		  Item item=delete.get(i);
	  %>
					<tr>
						<td width="58" class=buy_td_6>
							&nbsp;
						</td>
						<td width="365" class=t2>
							<a href="#"><%=item.getBook().getProduct_name()%></a>
						</td>
						<td width="106" class=buy_td_5>
							￥<%=item.getBook().getFixed_price()%>
						</td>
						<td width="134" class=buy_td_4>
							<span>￥<%=item.getBook().getDang_price()%></span>
						</td>
						<td width="56" class=buy_td_1>
							<a href="huifu.doo?id=<%=item.getBook().getId()%>">恢复</a>
						</td>
						<td width="16" class=objhide>
							&nbsp;
						</td>
					</tr>
<%}%>


					<tr class=td_add_bord>
						<td colspan=8>
							&nbsp;
						</td>
					</tr>
					</c:if>

					<%}%>
				</tbody>
			</table>
		</div>

		</c:if>
		<br />
		<br />
		<br />
		<br />
		<!--页尾开始 -->
		<%@include file="../common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>



