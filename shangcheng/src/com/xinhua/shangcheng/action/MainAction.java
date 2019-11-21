package com.xinhua.shangcheng.action;

import com.xinhua.shangcheng.dao.ShangChengDao;
import com.xinhua.shangcheng.dao.impl.ShangChengDaoImpl;
import com.xinhua.shangcheng.pojo.*;
import com.xinhua.shangcheng.service.Service;
import com.xinhua.shangcheng.service.impl.ServiceImpl;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * 加载main.jsp页面所需要的所有资源
 * @Author songsong
 * @Date 2019/10/31 14:19
 */
public class MainAction extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Service service = new ServiceImpl();
        ShangChengDao dao = new ShangChengDaoImpl();
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String url = request.getRequestURI();
        HttpSession session = request.getSession();
        String action = url.substring(url.lastIndexOf("/"), url.lastIndexOf("."));
        if (action.equals("/list")) {
            try {
                //加载分类浏览器信息对象并转发到category.jsp
                List<Category> list = dao.findAll();
                Cart cart=new Cart();
                session.setAttribute("cart",cart);
                Category category = service.fenLei(list);
                request.setAttribute("cat", category);
                request.getRequestDispatcher("category.jsp").include(request, response);
                //request.getRequestDispatcher("../main/main.jsp").include(request,response);
               // request.setAttribute("cat", category);
                //request.getRequestDispatcher("main.jsp").include(request, response);


                //加载编辑推荐页面数据并转发到recommend.jsp
                List<Book> list1 = dao.findAllBoos();
//                //System.out.println(list1+""+11111);
               request.setAttribute("book", list1);

                request.getRequestDispatcher("recommend.jsp").include(request,response);
                //request.setAttribute("book", list1);
                //request.getRequestDispatcher("hot.jsp").include(request,response);
//                request.setAttribute("cat", category);
//                request.setAttribute("book", list1);
                // request.getRequestDispatcher("new.jsp").include(request,response);
                // request.getRequestDispatcher("main.jsp").include(request, response);
                //request.getRequestDispatcher("main.jsp").forward(request, response);
                request.getRequestDispatcher("/main1.doo").forward(request,response);
                //request.setAttribute("cat", category);
                //response.sendRedirect("main/main1.doo");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        //加载分类浏览器信息对象并转发到category.jsp
        //request.setAttribute("cat", "");
        //request.getRequestDispatcher("category.jsp").include(request, response);
        //加载编辑推荐页面数据并转发到recommend.jsp

        //加载热销页面数据并转发到hot.jsp

        //加载新品页面数据并转发到new.jsp

        //加载热卖榜单数据保存到request

        //最后一步将页面转发到main.jsp
        //request.getRequestDispatcher("main.jsp").forward(request, response);

        if (action.equals("/bookList")) {
            int id = Integer.parseInt(request.getParameter("id"));
            int page = Integer.parseInt(request.getParameter("page"));
            try {
                //获得之前分类好的category对象
                Category category = service.fenLei(dao.findAll());
                //获得当前二级分类的名称及数量
                List<BookList> bookLists = service.liuLan(category);
                //查询当前分类下的所有产品
                List<Book> list = service.Count(id);
                //将当前所有产品转为list集合 里面每一个集合有三个产品
                List<List> lists = service.fenLeiBy3(list);
                //获得当前id的产品名称
                String name = dao.findName(id);
                request.setAttribute("id",id);
                request.setAttribute("page", page);
                request.setAttribute("lists", lists);
                request.setAttribute("list", list);
                request.setAttribute("bookList", bookLists);
                request.setAttribute("name", name);
                request.getRequestDispatcher("book_list.jsp").forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(action.equals("/buy")){
            int id = Integer.parseInt(request.getParameter("id"));
            int buyid=Integer.parseInt(request.getParameter("buyid"));
            int page=Integer.parseInt(request.getParameter("page"));
            //System.out.println(id);
            String msg=null;
            try {
                Book book=dao.findBookById(buyid);
                int qty=1;
                Item item=new Item(book,qty);
                Cart cart= (Cart) session.getAttribute("cart");
                if(cart==null){
                    cart=new Cart();
                }
                boolean flag=cart.addItem(item);
                if(flag){
                    msg="添加到购物车成功";
                    request.setAttribute("msg_"+buyid,msg);
                }
                else {
                    msg="产品已经添加到购物车";
                    request.setAttribute("msg_"+buyid,msg);
                }
                session.setAttribute("cart",cart);
                request.getRequestDispatcher("bookList.doo?id="+id+"&page="+page+"").forward(request,response);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
       if(action.equals("/update")){
           int id=Integer.parseInt(request.getParameter("id"));
           int qty=Integer.parseInt(request.getParameter("qty"));
           try {
               Cart cart= (Cart) session.getAttribute("cart");
               cart.update(id,qty);
               session.setAttribute("cart",cart);
               request.getRequestDispatcher("cart_list.jsp").forward(request,response);
           } catch (Exception e) {
               e.printStackTrace();
           }
       }
        if(action.equals("/delete")){
            int id=Integer.parseInt(request.getParameter("id"));
            //System.out.println(id);
            Cart cart= (Cart) session.getAttribute("cart");
            try {
                Book book=dao.findBookById(id);
                cart.delete(book);
                session.setAttribute("cart",cart);
                request.getRequestDispatcher("cart_list.jsp").forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(action.equals("/address")){
            User user=(User)session.getAttribute("user");
            int id=user.getId();
            try {
                Address address=dao.findAddressById(id);
                request.setAttribute("address",address);
                request.getRequestDispatcher("address_form.jsp").forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        //ajax验证
        if(action.equals("/updateAdd")){
            System.out.println(11111);
            String address=request.getParameter("address");
            try {
                Address address1=dao.findAddressByAddress(address);
                JSONArray json=JSONArray.fromObject(address1);
                response.getWriter().write(json.toString());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(action.equals("/huifu")){
            int id=Integer.parseInt(request.getParameter("id"));
            Cart cart= (Cart) session.getAttribute("cart");
            try {
                Book book=dao.findBookById(id);
                cart.huifu(book);
                session.setAttribute("cart",cart);
                request.getRequestDispatcher("cart_list.jsp").forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(action.equals("/updateAddress")){
            int id=Integer.parseInt(request.getParameter("id"));
            String receive_name=request.getParameter("receiveName");
            String fullAddress=request.getParameter("fullAddress");
            String postalCode=request.getParameter("postalCode");
            String mobile=request.getParameter("mobile");
            String phone=request.getParameter("phone");
            Address address=new Address(receive_name,fullAddress,postalCode,mobile,phone);
            //System.out.println(address);
            try {
                dao.UpdateAddress(id,address);
                Address address1=dao.findAddressByAddress(fullAddress);
                int userId=address1.getUserId();
                int status=10;
                long order_time=new Date().getTime();
                String order_desc= UUID.randomUUID().toString();
                Cart cart=(Cart) session.getAttribute("cart");
                double sumprice=0;
                List<Item> list=cart.getItems();
                for(int i=0;i<list.size();i++){
                    sumprice+=list.get(i).getBook().getDang_price()*list.get(i).getQty();
                }
                Order order=new Order(userId,status,order_time,order_desc,sumprice,receive_name,fullAddress,postalCode,mobile,phone);
                dao.addOrder(order);
                request.setAttribute("order",order);
                request.getRequestDispatcher("order_ok.jsp").forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }



        if(action.equals("/main1")){
            //加载编辑推荐页面数据并转发到recommend.jsp
            List<Book> list = null;
            List<Book> list2 = null;
            try {
                list = dao.findAllBoos();
                list2 = dao.findAllBoos();
            } catch (Exception e) {
                e.printStackTrace();
            }
//                //System.out.println(list1+""+11111);
            request.setAttribute("book1", list);
            request.getRequestDispatcher("main/hot.jsp").include(request,response);
            request.setAttribute("book2", list2);
            request.getRequestDispatcher("main/new.jsp").include(request,response);
            request.getRequestDispatcher("main/main.jsp").forward(request, response);
    }
}
}
