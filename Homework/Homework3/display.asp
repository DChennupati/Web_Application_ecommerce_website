<%@ Language=VBScript %>
<html>
    <head>
        <title>Hoemwork3</title>
        <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    </head>
    <body>
        <%
         firstName = Request.QueryString("fName") 
         lastName = Request.QueryString("lName") 
         userID = Request.QueryString("userID") 
         password = Request.QueryString("pw") 
         gender = Request.QueryString("gender") 
         newsletter = Request.QueryString("news")
         major = Request.QueryString("major") 
         hobbies = Request.QueryString("hobbies")
         message = Request.QueryString("Message")
         sDate = Request.QueryString("date")
            %>


        <p> FirstName : <%=firstName%></p>
        <p> Lastname : <%=lastName%></p>
        <p> UserID : <%=userID%></p>
        <p> Password : <%=password%></p>
        <p> Gender : <%=gender%></p>
        <p> Newsletter : <%=newsletter%></p>
        <p> Major : <%=major%></p>
        <p> Hobbies : <%=hobbies%></p>
        <p> Message : <%=message%></p>
        <p> Date : <%=sDate%></p>
    </body>
    
</html>