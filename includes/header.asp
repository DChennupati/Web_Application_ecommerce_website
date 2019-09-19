<%
    Set conn = Server.CreateObject("ADODB.Connection") 'Set DB connection variable 
    conn.Open dbConn 'open database connection

    SQLOrderItems = "SELECT count(*) as TOTAL from orderItems where OID = " & session("cartID") 
    Set RSOrderItems = conn.Execute(SQLOrderItems) 'Execute query
    intItems = RSOrderItems("TOTAL")
%>
<img src="images/header.png" />
    <div style="width: 50px; display: inline;" id="loginDisplay"><% =session("loginText") %></div>
    <div style="width: 50px; display: inline;" id="cartListing">Cart (<% =intItems %>)</div>

<%
    RSOrderItems.Close() 'Close the recordset
    conn.Close 'Close the database connection
%>