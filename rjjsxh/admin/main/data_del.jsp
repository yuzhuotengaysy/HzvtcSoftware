<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../../main/connect.jsp" %>
<%
	String id = request.getParameter("id");
	String sql = "delete from data where dataid=" + id;
	stmt.executeUpdate(sql);							
	conn.close();	
	out.print("<script>alert('删除成功');location.href = '../data_manager.jsp'; </script>");		//网页跳转回上级页面
%>