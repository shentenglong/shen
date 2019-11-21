<%@ page import="com.xinhua.shangcheng.pojo.Book" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html;charset=utf-8"%>
<h2>
	编辑推荐
</h2>

<div id=__bianjituijian/danpin>
	<div class=second_c_02>

		<%List<Book> list= (List<Book>) request.getAttribute("book");

			//System.out.println(list);
			for(int i=0;i<2;i++){
				Random random=new Random();
				int a=random.nextInt(list.size()-1);
				Book book=list.get(a);
				long time=book.getPublish_time();
				Date date=new Date(time);
				SimpleDateFormat sdft=new SimpleDateFormat("yyyy年-MM月-dd日");
				String  str=sdft.format(date);
		%>
		<div class=second_c_02_b1>
			<div class=second_c_02_b1_1>
				<a href='#' target='_blank'><img src="../productImages/<%=book.getProduct_pic()%>" width=70 border=0 /> </a>
			</div>
			<div class=second_c_02_b1_2>
				<h3>
					<a href='#' target='_blank' title='输赢'>书名</a>
				</h3>
				<h4>
					作者：<%=book.getAuthor()%> 著
					<br />
					出版社：<%=book.getPublishing()%>&nbsp;&nbsp;&nbsp;&nbsp;出版时间：<%=str%>
				</h4>
				<h5>
					简介:<%=book.getDescription()%>
				</h5>
				<h6>
					定价：￥<%=book.getFixed_price()%>&nbsp;&nbsp;当当价：￥<%=book.getDang_price()%>
				</h6>
				<div class=line_xx></div>
			</div>
		</div>
		<%}%>
	</div>
</div>
