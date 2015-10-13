<%-- 
    Document   : nameView
    Created on : Sep 29, 2015, 9:26:38 AM
    Author     : LabGSG
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Enter Your</h1>
        <spring:nestedPath path="name">
            <form action="" method="post">
                <table>
                    <tr>
                        <td>Name</td>
                        <td><spring:bind path="value">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind></td></tr>
                    <tr>
                        <td> Age</td>
                        <td><spring:bind path="age">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind></td>
                    </tr>
                    <tr>
                        <td> <input type="submit" value="OK"></td>
                        <td></td>
                    </tr>
                </table>
            </form>
        </spring:nestedPath>
    </body>
</html>
