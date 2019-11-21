package com.xinhua.shangcheng.action;

import com.xinhua.shangcheng.dao.ShangChengDao;
import com.xinhua.shangcheng.dao.impl.ShangChengDaoImpl;
import com.xinhua.shangcheng.pojo.Ajax;
import com.xinhua.shangcheng.pojo.User;
import com.xinhua.shangcheng.service.Service;
import com.xinhua.shangcheng.service.impl.ServiceImpl;
import net.sf.json.JSONArray;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Administrator on 2019/10/30.
 */
public class RegiterAction extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Service service=new ServiceImpl();
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String url=request.getRequestURI();
        HttpSession session=request.getSession();
        String action=url.substring(url.lastIndexOf("/"),url.lastIndexOf("."));
        if(action.equals("/regist")){
            PrintWriter out=response.getWriter();
            String email=request.getParameter("name");
            try {
                User user=service.findByEmali(email);
                if(user==null){
                    Ajax ajax=new Ajax(true);
                    JSONArray json=JSONArray.fromObject(ajax);
                    out.write(json.toString());
                }else {
                    Ajax ajax=new Ajax(false);
                    JSONArray json=JSONArray.fromObject(ajax);
                    out.write(json.toString());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(action.equals("/verify_form")){
//            private int id;
//            private String email;
//            private String nickname;
//            private String password;
//            private int user_integral;
//            private String is_email_verify;
//            private String email_verify_code;
//            private long last_login_time;
//            private String last_login_ip;
            String email=request.getParameter("email");
            String nickname=request.getParameter("nickname");
            String password=request.getParameter("password");
            int user_integral=10;
            String is_email_verify="false";
            String email_verify_code= UUID.randomUUID().toString();
            System.out.println(email_verify_code);
            Date date=new Date();
            long last_login_time=date.getTime();
            String last_login_ip="0,0,0,0";
            User user=new User(email,nickname,password,user_integral,is_email_verify,email_verify_code,last_login_time,last_login_ip);
            System.out.println(user);
            System.out.println("11111");
            try {
                service.saveByUser(user);
                service.fromMail(user);
                request.setAttribute("user",user);
                request.setAttribute("msg",null);
                request.getRequestDispatcher("verify_form.jsp").forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(action.equals("/register_ok")){
            String code= request.getParameter("code");
            System.out.println(code);
            String email=request.getParameter("Email");
            System.out.println(email);
            try {
                User user=service.findByEmali(email);
                String number=user.getEmail_verify_code();
                if(code.equals(number)){
                    service.updateCode(user);
                    request.setAttribute("user",user);
                    request.getRequestDispatcher("register_ok.jsp").forward(request,response);
                }
                else {
                    request.setAttribute("msg","激活码错误");
                    request.setAttribute("user",user);
                    request.getRequestDispatcher("verify_form.jsp").forward(request,response);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(action.equals("/login")){
            String str=null;
            String email=request.getParameter("name");
            String pwd=request.getParameter("password");
            System.out.println(email+""+pwd);
            try {
                str=service.login(email,pwd);
                System.out.println(str);
                int id=Integer.parseInt(str);
                User user=service.findByEmali(email);
                System.out.println(user);
                if(user.getIs_email_verify().equals("true")){
                    Date date=new Date();
                    long d=date.getTime();
                    user.setLast_login_time(d);
                    service.updateTime(user);
                    session.setAttribute("user",user);
                    response.sendRedirect("../main/list.doo");
                }
                else {
                    //System.out.println(11111);
                    request.setAttribute("user",user);
                    request.getRequestDispatcher("verify_form.jsp").forward(request,response);
                }
            }catch (NumberFormatException e){
                request.setAttribute("msg",str);
                request.getRequestDispatcher("login_form.jsp").forward(request,response);
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(action.equals("/code")){
            String code=request.getParameter("name");
            PrintWriter out=response.getWriter();
            String realCode= (String) session.getAttribute("code");
            System.out.println("正确的验证码:"+realCode);
            System.out.println("用户输入的验证码:"+code);
            if(code.toUpperCase().equals(realCode)){
                Ajax ajax=new Ajax(true);
                JSONArray json=JSONArray.fromObject(ajax);
                out.write(json.toString());
            }else {
                Ajax ajax=new Ajax(false);
                JSONArray json=JSONArray.fromObject(ajax);
                out.write(json.toString());
            }
        }
    }
}
