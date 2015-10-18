<%-- 
    Document   : FormObat
    Created on : Oct 18, 2015, 8:51:26 PM
    Author     : icon
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
        <h1>Data Obat</h1>
        <spring:nestedPath path="name">
            <form action="" method="post">
                <table>
                    <tr>
                        <td>Id Obat</td>
                        <td><spring:bind path="id">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind></td></tr>
                    <tr>
                        <td>Nama Obat</td>
                        <td><spring:bind path="value">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind></td></tr>
                    <tr>
                        <td>Jenis Obat</td>
                        <td><spring:bind path="jenis">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind></td>
                    </tr>
                    <tr>
                        <td>Jumlah</td>
                        <td><spring:bind path="jumlah">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind></td>
                    </tr>
                    <tr>
                        <td>Harga</td>
                        <td><spring:bind path="harga">
                                <input type="text" name="${status.expression}" value="${status.value}">
                            </spring:bind></td></tr>
                    <tr>
                        <td> <input type="submit" value="OK"></td>
                        <td></td>
                    </tr>
                </table>
            </form>
        </spring:nestedPath>
    </body>
</html>
