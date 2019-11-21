package com.xinhua.shangcheng.util;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

/**
 * Created by Administrator on 2019/10/21.
 */
public class CodeServlet extends HttpServlet {
    public static final int CODE_WIDTH=80;
    public static final int CODE_HEIGHT=30;
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//获取一个图片对象
        BufferedImage imge = new BufferedImage(CODE_WIDTH, CODE_HEIGHT, BufferedImage.TYPE_INT_RGB);
        //获取图片的画笔对象
        Graphics g= imge.getGraphics();
        Random ran = new Random();
        //画背景图,填充背景色
        g.setColor(new Color(ran.nextInt(255), ran.nextInt(255), ran.nextInt(255)));
        g.fillRect(0, 0, CODE_WIDTH, CODE_HEIGHT);
        //获取要生成的验证码字符一共五个字符
        String  code="";
        String pool="0123456789";//待取出验证码的字符池
        for(char c='A';c<='Z';c++){
            pool+=c;
        }
        //随机从pool中获取五个字符
        for(int i=0;i<5;i++){
            code+=pool.charAt(ran.nextInt(pool.length()));
        }
        System.out.println("随机生成的验证码字符是:"+code);
        //绑定到session等待验证
        request.getSession().setAttribute("code", code);
        //设置前景色即是设置字体的颜色
        g.setColor(new Color(ran.nextInt(255), ran.nextInt(255), ran.nextInt(255)));
        //设置字体
        g.setFont(new Font("宋体", Font.ITALIC,24));
        //画字符到图片上
        g.drawString(code, 7, 22);
        //画干扰线
        for(int i=0;i<10;i++){
            //每条干扰线给一个颜色
            g.setColor(new Color(ran.nextInt(255), ran.nextInt(255), ran.nextInt(255)));
            //两点确定一线，范围是在图片范围内
            g.drawLine(ran.nextInt(80), ran.nextInt(30), ran.nextInt(80), ran.nextInt(30));
        }
        //发送该图片对象到前台页面
        //设置响应的数据类型
        response.setContentType("image/jpeg");
        //写出图片
        ImageIO.write(imge, "jpeg", response.getOutputStream());
    }

}
