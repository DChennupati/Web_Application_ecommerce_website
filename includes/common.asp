<%
 
Function getCustID()
 'ASP code for checking the customer ID
 sstrActiveSession = session("getVisitorID")
 strHasCart = session("activeCart")

 If NOT strActiveSession = 1 Then
  call getVisitorID()
 Else
     If mid(session("visitorID"),1,1) = "v" Then
      session("loginText") = "<a href='index.asp?pageID=6' class='whiteLinks'>Login</a>"
     Else
      session("loginText") = "Welcome " & session("userName") & " (<a href='index.asp?pageID=6&logout=1' class='whiteLinks'>Logout</a>)"
     End If
 End If

 If NOT strHasCart = 1 Then
     session("activeCart") = 1
     session("cartID") = 0
 End If
End Function

Function getVisitorID()
 'ASP code for creating a temporary visitor ID
 Set conn = Server.CreateObject("ADODB.Connection")
 conn.Open dbConn
 SQLGetvID1 = "Insert Into visitors(usedYN) values('Y')"
 SQLGetvID2 = "SELECT max(visitorID) as vID from visitors"
 Set rsCreateVIS = conn.Execute(SQLGetvID1)
 Set rsVisitorID = conn.Execute(SQLGetvID2)

 session("getVisitorID") = 1
 session("visitorID") = "v" & rsVisitorID("vID")

 session("loginText") = "<a href='index.asp?pageID=6' class='whiteLinks'>Login</a>"

 rsVisitorID.close
 set rsVisitorID=nothing
 conn.close
 set conn=nothing
End Function

%>