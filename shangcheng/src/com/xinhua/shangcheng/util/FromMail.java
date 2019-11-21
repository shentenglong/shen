package com.xinhua.shangcheng.util;

import com.xinhua.shangcheng.pojo.User;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

public class FromMail {
	public static void main(String[] args) throws Exception {

		String from = "271129881@qq.com";
		String to = "2711298815@qq.com";
		String subject = "test";
		String body = "test!!!";
		String smtpHost = "smtp.qq.com";
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "smtp"); // 使用的协议（JavaMail规范要求）
		props.setProperty("mail.smtp.host", smtpHost); // 发件人的邮箱的 SMTP服务器地址
		props.setProperty("mail.smtp.auth", "true"); // 请求认证，参数名称与具体实现有关
		// 创建Session实例对象
		Session session = Session.getDefaultInstance(props);
		// 创建MimeMessage实例对象
		MimeMessage message = new MimeMessage(session);
		// 设置发件人
		message.setFrom(new InternetAddress(from));
		// 设置收件人
		message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
		// 设置发送日期
		message.setSentDate(new Date());
		// 设置邮件主题
		message.setSubject(subject);
		// 设置纯文本内容的邮件正文
		message.setText(body);
		// 保存并生成最终的邮件内容
		message.saveChanges();
		// 设置为debug模式, 可以查看详细的发送 log
		session.setDebug(true);
		// 获取Transport对象
		Transport transport = session.getTransport("smtp");
		// 第2个参数需要填写的是QQ邮箱的SMTP的授权码
		transport.connect(from, "ocqnpmdlhaoabjde");
		// 发送，message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
		transport.sendMessage(message, message.getAllRecipients());
		transport.close();

	}


}
