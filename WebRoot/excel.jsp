<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Export to Excel - Demo</title>  
</head>  
<body>  
    <%  
        String exportToExcel = request.getParameter("exportToExcel");  
        if (exportToExcel != null  
                && exportToExcel.toString().equalsIgnoreCase("YES")) {  
            response.setContentType("application/vnd.ms-word");  
            response.setHeader("Content-Disposition", "inline; filename="  
                    + "excel.doc");  
   
        }  
    %>  
    <table align="left" border="2">  
        <thead>  
            <tr bgcolor="lightgreen">  
                <th>Sr. No.</th>  
                <th>Text Data</th>  
                <th>Number Data</th>  
            </tr>  
        </thead>  
        <tbody>  
            <%  
                for (int i = 0; i < 100; i++) {  
            %>  
            <tr bgcolor="lightblue">  
                <td align="center"><%=i + 1%></td>  
                <td align="center">This is text data <%=i%></td>  
                <td align="center"><%=i * i%></td>  
            </tr>  
            <%  
                }  
            %>  
        </tbody>  
    </table>  
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  
              
    <%  
        if (exportToExcel == null) {  
    %>  
    <a href="excel.jsp?exportToExcel=YES">Export to Excel</a>  
    <%  
        }  
    %>  
</body>  
</html>  
