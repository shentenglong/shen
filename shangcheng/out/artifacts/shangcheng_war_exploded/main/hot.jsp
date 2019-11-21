<%@page contentType="text/html;charset=utf-8"%>
<%@ page import="com.xinhua.shangcheng.pojo.Book" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<h2>
	<span class="more"><a href="#" target="_blank">更多&gt&gt;</a> </span>热销图书
</h2>
<div class="book_c_04">

	<%List<Book> list1= (List<Book>) request.getAttribute("book1");

		for(int i=0;i<4;i++){
			Random random=new Random();
			int a=random.nextInt(list1.size()-1);
			Book book=list1.get(a);
			System.out.println(book+""+222222);
	%>
	<!--热销图书A开始-->
	<div class="second_d_wai">
		<div class="img">
			<a href="#" target='_blank'><img
					src="../productImages/<%=book.getProduct_pic()%>" border=0 /> </a>
		</div>
		<div class="shuming">
			<a href="#" target="_blank"><%=book.getProduct_name()%></a><a href="#" target="_blank"></a>
		</div>
		<div class="price">
			定价：￥<%=book.getFixed_price()%>
		</div>
		<div class="price">
			当当价：￥<%=book.getDang_price()%>
		</div>
	</div>
	<div class="book_c_xy_long"></div>
	<!--热销图书A结束-->
<%}%>
</div>
<div class="clear"></div>