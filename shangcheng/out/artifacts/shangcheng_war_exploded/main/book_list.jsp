<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.List" %>
<%@ page import="com.xinhua.shangcheng.pojo.BookList" %>
<%@ page import="com.xinhua.shangcheng.pojo.Book" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>当当图书 – 全球最大的中文网上书店</title>
		<script type="text/javascript" src="../js/prototype-1.6.0.3.js">
		</script>
		<link href="../css/book.css" rel="stylesheet" type="text/css" />
		<link href="../css/second.css" rel="stylesheet" type="text/css" />
		<link href="../css/secBook_Show.css" rel="stylesheet" type="text/css" />
		<link href="../css/list.css" rel="stylesheet" type="text/css" />
	</head>
	<body>

		<!-- 头部开始 -->
		<%@include file="../common/head.jsp"%>
		<!-- 头部结束 -->

		<div style="width: 962px; margin: auto;">
			<a href="#"><img src="../images/default/book_banner_081203.jpg" border="0" /> </a>
		</div>
		<div class='your_position'>
			您现在的位置:&nbsp;
			<a href='#'>当当图书</a> &gt;&gt;
			<font style='color: #cc3300'><strong>${name}</strong> </font>
		</div>

		<div class="book">

			<!--左栏开始-->
			<div id="left" class="book_left">
				<div id="__fenleiliulan">
					<div class=second_l_border2>
						<h2>
							分类浏览
						</h2>
						<ul>
							<li>
								<div>
									<div class=second_fenlei>
										&middot;全部&nbsp;(24)
									</div>
								</div>
							</li>
							<div class="clear"></div>
							
							<!--2级分类开始-->
                            <c:forEach items="${bookList}" var="booklist">
								<c:set var="id" value="${id}"/>
							<c:if test="${booklist.id==id}">

							<li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<div class=second_fenlei3>
										<a href="bookList.doo?id=${booklist.id}&page=1">${booklist.type}&nbsp;(${booklist.number})</a>
									</div>
								</div>
							</li>
						    <div class="clear"></div>
							</c:if>
							<c:if test="${booklist.id!=id}">
							<li>
								<div>
									<div class=second_fenlei>
										&middot;
									</div>
									<div class=second_fenlei>
										<a href="bookList.doo?id=${booklist.id}&page=1">${booklist.type}&nbsp;(${booklist.number})</a>
									</div>
								</div>
							</li>
							<div class="clear"></div>
							</c:if>
							</c:forEach>
							<!--2级分类结束-->
							
							<li>
								<div></div>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!--左栏结束-->

			<!--中栏开始-->
			<div class="book_center">

				<!--图书列表开始-->
				<div id="divRight" class="list_right">

					<div id="book_list" class="list_r_title">
						<div class="list_r_title_text">
							排序方式
						</div>
						<select onchange='' name='select_order' size='1'
							class='list_r_title_ml'>
							<option value="">
								按上架时间 降序
							</option>
						</select>
						<div id="divTopPageNavi" class="list_r_title_text3">

							<!--分页导航开始-->
							<c:set var="page" value="${page}"/>
							<c:if test="${page>=2}">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
									href="bookList.doo?page=${page-1}&id=${id}">
								<img src='../images/page_up.gif' /> </a>
							</div>
							</c:if>
                            <c:if test="${page<2}">
							<div class='list_r_title_text3a'>
								<img src='../images/page_up_gray.gif' />
							</div>
							</c:if>
							<div class='list_r_title_text3b'>
								<c:set var="size" value="${lists.size()}"/>
								第${page}页/共${lists.size()}页
							</div>
                            <c:if test="${page<size}">
							<div class='list_r_title_text3a'>
								<a name=link_page_next
                                   href="bookList.doo?page=${page-1}&id=${id}">
									<img src='../images/page_down.gif' /> </a>
							</div>
							</c:if>
                            <c:if test="${page>=size}">

							<div class='list_r_title_text3a'>
								<img src='../images/page_down_gray.gif' />
							</div>
							</c:if>
							<!--分页导航结束-->
						</div>
					</div>
					
					<!--商品条目开始-->
                    <%
                        int id= (int) request.getAttribute("id");
                        int page1= (int) request.getAttribute("page");
                        List<List>lists= (List<List>) request.getAttribute("lists");
                        List<Book>books=lists.get(page1-1);

                        for(int i=0;i<books.size();i++){
                            Book book=books.get(i);
                            long time=book.getPublish_time();
                            Date date=new Date(time);
                            SimpleDateFormat sdft=new SimpleDateFormat("yyyy年-MM月-dd日");
                            String  str=sdft.format(date);
                    %>
                    <div class="list_r_line"></div>
                    <div class="clear"></div>

                    <div class="list_r_list">
							<span class="list_r_list_book"><a name="link_prd_img" href='#'>
								<img src="../productImages/<%=book.getProduct_pic()%>" /> </a> </span>
                        <h2>
                            <a name="link_prd_name" href='#'><%=book.getProduct_name()%></a>
                        </h2>
                        <h3>
                            顾客评分：100
                        </h3>
                        <h4 class="list_r_list_h4">
                            作 者:
                            <a href='#' name='作者'><%=book.getAuthor()%></a>
                        </h4>
                        <h4>
                            出版社：
                            <a href='#' name='出版社'><%=book.getPublishing()%></a>
                        </h4>
                        <h4>
                            出版时间：<%=str%>
                        </h4>
                        <h5>
                            <%=book.getDescription()%>
                        </h5>
                        <div class="clear"></div>
                        <h6>
                            <span class="del">￥<%=book.getFixed_price()%></span>
                            <span class="red">￥<%=book.getDang_price()%></span>
                            节省：￥<%=book.getFixed_price()-book.getDang_price()%>
                        </h6>
                        <span class="list_r_list_button">
							<a href="buy.doo?buyid=<%=book.getId()%>&id=<%=id%>&page=<%=page1%>">
								<%String msg= (String) request.getAttribute("msg_"+book.getId());%>
										<span style="color: crimson"><%=msg==null?"":msg%></span>
							<img src='../images/buttom_goumai.gif' /> </a>
							<span id="cartinfo"></span>
                    </div>
                    <div class="clear"></div>
                    <%}%>

						<!--商品条目结束-->

					<div class="clear"></div>
					<div id="divBottomPageNavi" class="fanye_bottom">
					</div>

				</div>
				<!--图书列表结束-->

			</div>
			<!--中栏结束-->
			<div class="clear"></div>
		</div>

		<!--页尾开始 -->
		<%@include file="../common/foot.jsp"%>
		<!--页尾结束 -->
	</body>
</html>
