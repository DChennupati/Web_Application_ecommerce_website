<%
    Set conn = Server.CreateObject("ADODB.Connection") 'Set DB connection variable 
    conn.Open dbConn 'open database connection

    SQLDept = "select deptID, name from department;" 'Select all departments
    Set RSDept = conn.Execute(SQLDept) 'Execute query to display the departments
%>

<table width="210" cellspacing="0" cellpadding="0" border="0">

    <tr>
        <td colspan="3" height="5"></td>
    </tr>
    <tr>
        <td colspan="3" height="1" bgcolor="#226e24"></td>
    </tr>
    <tr>
        <td width="1" bgcolor="#226e24"></td>
        <td align="left" bgcolor="#ec837f" width="207">
            <table cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <td colspan="2" height="10"></td>
                </tr>
                <tr>
                    <td width="10"></td>
                    <td width="197"><a href="index.asp">Home</a></td>
                </tr>
                <tr>
                    <td colspan="2" height="15"></td>
                </tr>
                <tr>
                    <td width="10"></td>
                    <td><a href="index.asp?pageID=1">Departments</a></td>

                </tr>
                <tr>
                    <td colspan="2" height="7"></td>

                </tr>

                <%
    ' Loop through all departments and display the link
    do while not RSDept.eof ' Loop through the recordset until you reach the end
                %>

                <tr>
                    <td width="10"></td>
                    <td class ="navigation">
                        <a href="index.asp?pageID=1&deptID=<%=RSDept("deptID")%>"><%=RSDept("name")%></a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="7"></td>
                </tr>
                <%
                    'Select all categories for each deptID to create links to the catogory pages
                    SQLcat = "SElect catID, name from category where deptID=" & RSDept("deptID") & ";"

                    Set RScat = conn.Execute(SQLcat) 'Execute query to display the categories
                    do while not RScat.eof
                %>
                <tr>
                    <td width="10"></td>
                    <td>
                       --<a href="index.asp?pageID=2&catID=<%=RScat("catID")%>"><%=RScat("name")%></a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" height="7"></td>
                </tr>
                <%
        RScat.movenext
        Loop
        RScat.Close() 'Close the Category recordset
    RSDept.movenext ' Move to the next record in your record set
    Loop ' Loop back to the top
                %>
            <td><a href="index.asp?pageID=4">Contact US</a></td>
    </tr>
    <tr>
        <td colspan="2" height="15"></td>
    </tr>
</table>

</td>
        <td width="1" bgcolor="#226e24"></td>
</tr>
    <tr>
        <td colspan="3" height="1" bgcolor="#226e24"></td>
    </tr>
<tr>
    <td colspan="3" height="5"></td>
</tr>
</table>

<%
    RSDept.Close() 'Close the department recordset
    conn.Close 'Close the database connection
%>