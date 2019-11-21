<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.xinhua.shangcheng.pojo.Category" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html;charset=utf-8"%>
<div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>
			分类浏览
		</h2>

		<c:forEach items="${cat.subCats}" var="category">
		<div class="bg_old" onmouseover="this.className = 'bg_white';"
			 onmouseout="this.className = 'bg_old';">
		<!--1级分类开始-->

				<h3>
					[<a href='bookList.doo?id=${category.id}&page=1'>${category.name}</a>]
				</h3>


						<!--2级分类开始-->
			<ul class="ul_left_list">

				    <c:forEach items="${category.subCats}" var="category1">

						<li>
							<a href='bookList.doo?id=${category1.id}&page=1'>${category1.name}</a>
						</li>

						<!--2级分类结束-->

					</c:forEach>
			</ul>
		</div>
		<div class="empty_left">
		</div>
		<div class="more2">
		</div>
		</c:forEach>



			<!--1级分类结束-->

		<div class="bg_old">
			<h3>
				&nbsp;
			</h3>
		</div>
	</div>
</div>
