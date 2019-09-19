<%@  language="VBScript" %>
<html>
<head>
    <title>Hoemwork5</title>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
</head>
<%
         firstName = Request.form("fName") 
         lastName = Request.form("lName") 
         userID = Request.form("userID") 
         password = Request.form("pw") 
         gender = Request.form("gender") 
         newsletter = Request.form("news")
         major = Request.form("major") 
         hobbies = Request.form("hobbies")
         message = Request.form("Message")
         sDate = Request.form("date")
        age = Request.form("myAge")
          
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

    strData = firstName & CHR(9) & lastName & CHR(9) & userID & CHR(9) & password & CHR(9) & gender & CHR(9) & newsletter & CHR(9) &  major & CHR(9) & hobbies & CHR(9) & message & CHR(9) & sDate & CHR(9) & age

    Dim FS, F, objReadFile
    set FS = server.CreateObject("Scripting.FileSystemObject")
    set F = FS.OpenTextFile(server.MapPath("formData.txt"),8,true)
    set objReadFile = FS.OpenTextFile(server.MapPath("formData.txt"),1)
    F.Writeline(strData)
    F.close
    
%>
<body>
    <table cellpadding="0" cellspacing="0" border="0" align="center">
        <tr>
            <td>Line No</td>
            <td>First Name</td>
            <td>Last Name</td>
            <td>userID</td>
            <td>Password</td>
            <td>Gender</td>
            <td>Newsletter</td>
            <td>Major</td>
            <td>Hobbies</td>
            <td>Message</td>
            <td>Date</td>
            <td>Age</td>
        </tr>
        <%
      'Beginning ASP code to read the file and loop through the data
 Do Until objReadFile.AtEndOfStream
strLineNumber = objReadFile.Line
strLineData = objReadFile.ReadLine
strDataArray=Split(strLineData,CHR(9))
        %>
        <tr>
            <td width="1000" colspan="11" height="20"></td>
        </tr>
        <tr>
            <td><% = strLineNumber %></td>
            <%
for each strValue in strDataArray
            %>
            <td><% =strValue %></td>
            <%
 next
            %>
        </tr>
        <%
 Loop
            objReadFile.close
'Ending ASP code that loops back to the top and then closes the file
        %>
    </table>




</body>

</html>
