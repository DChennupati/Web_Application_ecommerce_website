<!DOCTYPE html>
<html>
<body>

    <h2>HTML Forms</h2>
    <script type="text/javascript">

        function validateForm() {

            // This is validation for first name input 
            if (!document.myForm.fName.value.match(/^[a-zA-Z\- ]+$/)) {
                alert('Please enter a valid first name');
                document.myForm.fName.focus();
                return false;
            }

            // This is validation for last name input
            if (!document.myForm.lName.value.match(/^[a-zA-Z\- ]+$/)) {
                alert('Please enter a valid last name');
                document.myForm.lName.focus();
                return false;
            }

            // This is validation for user id input
            if (document.myForm.userID.value.length < 6) {
                alert('length of user id should be greater than 5');
                document.myForm.userID.focus();
                return false;
            }

            //This is validation for password 
            if (!document.myForm.pw.value.match(/^[A-Za-z\d]{6,12}$/)) {
                document.myForm.pw.focus();
                alert('Please enter a valid password between 6 and 12 characters');
                return false;
            }

            //This is validation for gender
            if (!(document.myForm.gender[0].checked || document.myForm.gender[1].checked)) {
                alert('Please select your gender');
                return false;
            }

            //This is validation for age
            var ages = document.myForm.myAge;
            if (ages.options[ages.selectedIndex].value == 0) {
                alert("Please choose an age.")
                return false;
            }

            //This is validation for major
            var majors = document.myForm.major;
            if (majors.options[majors.selectedIndex].value == 0) {
                alert("Please choose an majors.")
                return false;
            }

             // This is validation for message input
            if (document.myForm.message.value.length < 6) {
                alert('length of message should be greater than 5');
                document.myForm.message.focus();
                return false;
            }
             

        }


    </script>
    <form name="myForm" action="display.asp" onsubmit="return validateForm()" autocomplete="on" method="post">
        First name:<br>
        <input type="text" name="fName" value="">
        <br>
        Last name:<br>
        <input type="text" name="lName" value="">
        <br>
        User Id:<br>
        <input type="text" name="userID" value="">
        <br>
        Password:<br>
        <input type="password" name="pw">
        <br>
        Gender:<br>
        <input type="radio" name="gender" value="male">
        Male<br>
        <input type="radio" name="gender" value="female">
        Female<br>
        <br>
        <input type="checkbox" name="news" value="yes" checked>
        Receive a newsletter<br>
        <br>
        Major:
 
        <select name="major">
            <option value="0">Select your major</option>
            <option value="finance">Finance</option>
            <option value="accounting">accounting</option>
            <option value="pm">project management</option>
            <option value="mis">Management Information Systems</option>
        </select>
        <br>
        <br>
        Hobbies:<br>
        <select name="hobbies" multiple size="6">
            <option value="dancing">dancing</option>
            <option value="fighting">fighting</option>
            <option value="singing">singing</option>
            <option value="playing">playing</option>
            <option value="reading">reading books</option>
            <option value="swimming">swimming</option>
        </select>
        <br>
        <br>
        Age :
        <br>
        <select name="myAge">
            <option value="0">Select your Age</option>
            <% 
                 age = 13
                 do while age < 101
                 
            %>
            <option value="<% =age %>"><% =age %></option>
            <%
    age = age + 1
    Loop
            %>
        </select>
        <br>
        <br>
        Message:<br>
        <textarea name="message" rows="4" cols="50">
 
</textarea>
        <input type="hidden" id="date" name="date" value="16/10/2018">
        <br>
        <br>
        <input name="submit" type="submit" value="Submit">
    </form>

</body>
</html>
