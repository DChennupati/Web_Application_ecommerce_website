<%@  language="VBScript" %>
<!--#include file="dbconn.asp"-->

<%
 'ASP code goes here
    prodID = Request.QueryString("prodID")
    sPrice = Request.QueryString("sPrice")
    Set conn =Server.CreateObject("ADODB.Connection")
    conn.Open dbConn
    IF session("cartID") = 0 Then
        currentDate = date
        If Left(session("visitorID"),1) = "v" Then
            SQLCreateCart = "INSERT into orders(visitorID, createDt, completedYN) values ('" & session("visitorID") & "','" & currentDate & "', 'N');"
        ELSE
            SQLCreateCart = "INSERT into orders(custID, createDt, completedYN) values (" & session("visitorID") & ",'" & currentDate & "', 'N');"
        End If
        SQLgetCartID = "SELECT max(OID) as cartID from orders"
        Set rsCreateCart = conn.Execute(SQLCreateCart)
        Set rsGetCartID = conn.Execute(SQLgetCartID)
        session("cartID") = rsGetCartID("cartID")
        rsGetCartID.close
        set rsGetCartID=nothing
    End If

    SQLaddItem = "INSERT into orderItems(OID, prodID, qty, price) values (" & session("cartID") & "," & prodID & ", 1, " & sPrice & ");"
    SQLcartTotal = "SELECT count(*) as TOTAL from orderItems where OID = " & session("cartID")
    conn.Execute(SQLaddItem)
    Set rsCartTotal = conn.Execute(SQLcartTotal)
    cartTotal = rsCartTotal("Total") 
     rsCartTotal.Close() 'Close the recordset
    conn.Close 'Close the database connection
    response.write(cartTotal & ",Your item was added to the cart. <a href='index.asp?pageID=5'>View Cart</a>")
%>