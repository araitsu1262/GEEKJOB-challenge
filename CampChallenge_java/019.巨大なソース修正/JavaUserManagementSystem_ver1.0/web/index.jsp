<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="jums.UserDataBeans"%>
<%
      HttpSession hs = request.getSession();
      UserDataBeans udb = (UserDataBeans)hs.getAttribute("UDB");
%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JUMSトップ</title>
</head>
<body>
    <%
        if(udb!=null){
           hs.removeAttribute("UDB");
        }
    %>
    <h1>ユーザー情報管理トップ</h1><br>
    <h3>ここでは、ユーザー情報管理システムとしてユーザー情報の登録や検索、
        付随して修正や削除を行うことができます</h3><br>
    <a href="insert">新規登録</a><br>
    <a href="" >検索(修正・削除)</a><br>
</body>
</html>
