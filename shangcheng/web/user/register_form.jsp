<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>用户注册 - 当当网</title>
		<link href="../css/login.css" rel="stylesheet" type="text/css" />
		<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
		<script  type="text/javascript" src="../js/jquery-1.4.min.js"></script>
		<script type="text/javascript">
			function f1() {
                     var obj=$('#txtEmail').val();
                     if(obj.trim()==""){
                         $('#emailValidMsg').html('email不能为空').css('color','red');
                          return false;
					 }
					 else if(!obj.match("^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$")){
                         $('#emailValidMsg').html('email格式不合法').css('color','red');
                         return false;
					 }
					 else {
                         $.ajax({
                             url:'regist.action',
                             type:'post',
                             data:{'name':$('#txtEmail').val()},
                             dataType:'json',
                             success:function (data,statusText) {
                                 //alert("获取信息成功");
                                 //alert(data[0].AJ);
                                 //return data[0].AJ;
                                 if(data[0].AJ){
                                     $('#emailValidMsg').html('正确').css('color','green');

								 }else {
                                     $('#emailValidMsg').html('email已经被使用了').css('color','red');

                                 }

                             },
                             error:function () {
                                 alert("获得信息错误");

                             }

                         });
                         return $('#emailValidMsg').html()=="正确"?true:false;
					 };
			};
			function f2() {
                var obj1=$('#txtNickName').val();
                    if(obj1.trim()==""){
                        $('#nickNameValidMsg').html('昵称不能为空').css('color','red');
                        return false;
                    }else if(!obj1.match("[\\u4e00-\\u9fa5\\a-z0-9]{4,20}")){
                        $('#nickNameValidMsg').html('昵称格式不正确').css('color','red');
                        return false;
					}else {
                        $('#nickNameValidMsg').html('正确').css('color','green');
                        return true;
                    };
            };
            function f3() {
                var obj2=$('#txtPassword').val();
                    if(obj2.trim()==""){
                        $('#passwordValidMsg').html('密码不能为空').css('color','red');
                        return false;
                    }else if(!obj2.match("[A-Za-z0-9]{6,20}")){
                        $('#passwordValidMsg').html('密码格式不正确').css('color','red');
                        return false;
                    }else {
                        $('#passwordValidMsg').html('正确').css('color','green');
                        return true;
                    };
            };
            function f4() {
                var obj3=$('#txtPassword').val();
                    var obj4=$('#txtRepeatPass').val();
                    if(obj4.trim()==""){
                        $('#repeatPassValidMsg').html('密码不能为空').css('color','red');
                        return false;
                    }else if(!obj4.match("[A-Za-z0-9]{6,20}")){
                        $('#repeatPassValidMsg').html('密码格式不正确').css('color','red');
                        return false;
                    }else if(obj3!=obj4){
                        $('#repeatPassValidMsg').html('密码不一致').css('color','red');
                        return false;
					}else {
                        $('#repeatPassValidMsg').html('正确').css('color','green');
                        return true;
					};
            };
            function f5() {
                var obj=$('#txtVerifyCode').val();
					if(obj.trim()==""){
                       $('#vcodeValidMsg').html('验证码不能为空').css('color','red');
                        return false;
					}else {
                        $.ajax({
                            url:'code.action',
                            type:'post',
                            data:{'name':$('#txtVerifyCode').val()},
                            dataType:'json',
                            success:function (data,statusText) {
                                //alert("获取信息成功");
                                //alert(data[0].AJ);
                                //return data[0].AJ;
                                if(data[0].AJ){
                                    $('#vcodeValidMsg').html('正确').css('color','green');

                                }else {
                                    $('#vcodeValidMsg').html('验证码不正确').css('color','red');

                                }

                            },
                            error:function () {
                                alert("获得信息错误");
var input=window.document.getElementById("d1")
input.innerHTML="dsd";
                            }
                        });

                        return $('#vcodeValidMsg').html()=="正确"?true:false;
					};
            };
            function check() {
                   if(f1()==false){
                       return false;
				   }
				   else if(f2()==false){
                       return false;
				   }
                   else if(f3()==false){
                       return false;
                   }
                   else if(f4()==false){
                       return false;
                   }
                   else if(f5()==false){
                       return false;
                   }
                   else {
                       return true;
				   }
            }

//			$(function () {
//				$('#txtEmail').mouseleave(function () {
//                     var obj=$('#txtEmail').val();
//                     if(obj.trim()==""){
//                         $('#emailValidMsg').html('email不能为空').css('color','red');
//					 }
//					 else if(!obj.match("^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$")){
//                         $('#emailValidMsg').html('email格式不合法').css('color','red');
//					 }
//					 else {
//                         $.ajax({
//                             url:'regist.action',
//                             type:'post',
//                             data:{'name':$('#txtEmail').val()},
//                             dataType:'json',
//                             success:function (data,statusText) {
//                                 //alert("获取信息成功");
//                                 //alert(data[0].AJ);
//                                 //return data[0].AJ;
//                                 if(data[0].AJ){
//                                     $('#emailValidMsg').html('正确').css('color','green');
//								 }else {
//                                     $('#emailValidMsg').html('email已经被使用了').css('color','red');
//                                 }
//
//                             },
//                             error:function () {
//                                 alert("获得信息错误");
//                                 return false;
//                             }
//                         });
//
//					 }
//
//                });
//				$('#txtNickName').mouseleave(function () {
//                    var obj1=$('#txtNickName').val();
//                    if(obj1.trim()==""){
//                        $('#nickNameValidMsg').html('昵称不能为空').css('color','red');
//                    }else if(!obj1.match("[\\u4e00-\\u9fa5\\a-z0-9]{4,20}")){
//                        $('#nickNameValidMsg').html('昵称格式不正确').css('color','red');
//					}else {
//                        $('#nickNameValidMsg').html('正确').css('color','green');
//                    }
//                });
//				$('#txtPassword').mouseleave(function () {
//                    var obj2=$('#txtPassword').val();
//                    if(obj2.trim()==""){
//                        $('#passwordValidMsg').html('密码不能为空').css('color','red');
//                    }else if(!obj2.match("[A-Za-z0-9]{6,20}")){
//                        $('#passwordValidMsg').html('密码格式不正确').css('color','red');
//                    }else {
//                        $('#passwordValidMsg').html('正确').css('color','green');
//                    }
//                });
//                $('#txtRepeatPass').mouseleave(function () {
//                    var obj3=$('#txtPassword').val();
//                    var obj4=$('#txtRepeatPass').val();
//                    if(obj4.trim()==""){
//                        $('#repeatPassValidMsg').html('密码不能为空').css('color','red');
//                    }else if(!obj4.match("[A-Za-z0-9]{6,20}")){
//                        $('#repeatPassValidMsg').html('密码格式不正确').css('color','red');
//                    }else if(obj3!=obj4){
//                        $('#repeatPassValidMsg').html('密码不一致').css('color','red');
//					}else {
//                        $('#repeatPassValidMsg').html('正确').css('color','green');
//					}
//                });
//                $('#txtVerifyCode').mouseleave(function () {
//					var obj=$('#txtVerifyCode').val();
//					if(obj.trim()==""){
//                       $('#vcodeValidMsg').html('验证码不能为空').css('color','red');
//					}else {
//                        $.ajax({
//                            url:'code.action',
//                            type:'post',
//                            data:{'name':$('#txtVerifyCode').val()},
//                            dataType:'json',
//                            success:function (data,statusText) {
//                                //alert("获取信息成功");
//                                //alert(data[0].AJ);
//                                //return data[0].AJ;
//                                if(data[0].AJ){
//                                    $('#vcodeValidMsg').html('正确').css('color','green');
//                                }else {
//                                    $('#vcodeValidMsg').html('验证码不正确').css('color','red');
//                                }
//
//                            },
//                            error:function () {
//                                alert("获得信息错误");
//                                return false;
//                            }
//                        });
//					}
//                })
//            });
//            function getXHR(){
//                return new window.XMLHttpRequest;
//                //return new XMLHttpRequest();
//            }
//            function f() {
//                alert(22222)
//                var obj=$('#txtEmail').val();
//                var xhr=getXHR();
//                xhr.open("get","regist.action?code="+obj,true);
//                xhr.send(null)
//                xhr.onreadystatechange=function (date) {
//                    if(xhr.status==200&amp;&amp;date.target.readyState==4){
//                        var text=date.target.responseText;
//                        $('#emailValidMsg').html(text).css('color','red');
//                    }
//                }
//            }
		</script>
	</head>
	<body>
		<%@include file="../common/head1.jsp"%>
		<div class="login_step">
			注册步骤:
			<span class="red_bold">1.填写信息</span> > 2.验证邮箱 > 3.注册成功
		</div>
		<div class="fill_message">
			<form name="ctl00" method="post" action="verify_form.action" id="f" onsubmit="return check();">
				<h2>
					以下均为必填项
				</h2>
				<table class="tab_login" >
					<tr>
						<td valign="top" class="w1">
							请填写您的Email地址：
						</td>
						<td>
							<input name="email" type="text" id="txtEmail" class="text_input" onblur="f1();">
							<div class="text_left" id="emailValidMsg">
								<p>
									请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。
								</p>
									<span id="email.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							设置您在当当网的昵称：
						</td>
						<td>
							<input name="nickname" type="text" id="txtNickName" class="text_input" onblur="f2();" />
							<div class="text_left" id="nickNameValidMsg">
								<p>
									您的昵称可以由小写英文字母、中文、数字组成，
								</p>
								<p>
									长度4－20个字符，一个汉字为两个字符。
								</p>
								<span id="name.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							设置密码：
						</td>
						<td>
							<input name="password" type="password" id="txtPassword"
								class="text_input" onblur="f3();" />
							<div class="text_left" id="passwordValidMsg">
								<p>
									您的密码可以由大小写英文字母、数字组成，长度6－20位。
								</p>
								<span id="password.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							再次输入您设置的密码：
						</td>
						<td>
							<input name="password1" type="password" id="txtRepeatPass"
								class="text_input" onblur="f4();"/>
							<div class="text_left" id="repeatPassValidMsg">
							<span id="password1.info" style="color:red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td valign="top" class="w1">
							验证码：
						</td>
						<td>
							<img class="yzm_img" id='imgVcode' src="../code.do" />
							<input name="number" type="text" id="txtVerifyCode"
								class="yzm_input" onblur="f5();"/>
							<div class="text_left t1">
								<p class="t1">
									<span id="vcodeValidMsg">请输入图片中的四个字母。</span>
									
									<span id="number.info" style="color:red"></span>
									<a href="javascript:;" onclick="document.getElementById('imgVcode').src = '../code.do?'+(new Date()).getTime()">看不清楚？换个图片</a>
								</p>
							</div>
						</td>
					</tr>
				</table>

				<div class="login_in">

					<input id="btnClientRegister" class="button_1" name="submit"  type="submit" value="注 册"/>
				</div>
			</form>
		</div>
		<%@include file="../common/foot1.jsp"%>
	</body>
</html>

