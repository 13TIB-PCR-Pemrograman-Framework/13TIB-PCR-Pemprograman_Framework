<%-- 
    Document   : ViewForm
    Created on : Oct 18, 2015, 8:52:19 PM
    Author     : icon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Data Obat : </h1>
        <table>
            <tr>
                <td>Id Obat</td>
                <td>:</td>
                <td>${helloId}</td>
            </tr>
              <tr>
                <td>Nama Obat</td>
                <td>:</td>
                <td>${helloMessage}</td>
            </tr>
              <tr>
                <td>Jenis Obat</td>
                <td>:</td>
                <td>${helloJenis}</td>
            </tr>
              <tr>
                <td>Jumlah</td>
                <td>:</td>
                <td>${helloJumlah}</td>
            </tr>
              <tr>
                <td>Harga</td>
                <td>:</td>
                <td>${helloHarga}</td>
            </tr>
        </table>
    </body>
</html>
