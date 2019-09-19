<%@ Language=VBScript %>
<html>
    <head>
        <title>Hoemwork4</title>
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
        age = Request.QueryString("myAge")
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
        <%
            StrfinalAge = ""
           Select case true 
            case age < 18
                StrfinalAge = "Your age is " & age & ". You are a minor."
            case 17 < age  And age < 21
                StrfinalAge = "Your age is " & age & ". You're an adult under 21."
            case 20 < age And age < 25
                 StrfinalAge = "Your age is " & age & ". An adult with expensive car insurance."
            case 24 < age And age < 30
                 StrfinalAge = "Your age is " & age & ". An adult with cheaper car insurance."
            case 29 < age And age < 40
                 StrfinalAge = "Your age is " & age & ". Middle age years. "
            case 39 < age And age < 65
                 StrfinalAge = "Your age is " & age & ". The Golden Years."
            case 64 < age And age < 101
                 StrfinalAge = "Your age is " & age & ". Enjying a life of retirement."
            case else
                StrfinalAge = "Your age is " & age & "."
            End Select
            %>
        <p><% =StrfinalAge %></p>
       

    </body>
    
</html>