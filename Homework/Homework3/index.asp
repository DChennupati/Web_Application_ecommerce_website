<!DOCTYPE html>
<html>
<body>

<h2>HTML Forms</h2>

<form action="display.asp" autocomplete="on" method="get" >
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
  <input type="radio" name="gender" value="male"> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <br>
  <input type="checkbox" name="news" value="yes" checked> Receive a newsletter<br>
  <br>
  Major:
  <select name="major">
  	  <option value="finance">Finance</option>
	  <option value="accounting">accounting</option>
	  <option value="pm">project management</option>
	  <option value="mis">Management Innformation Systems</option>
  </select>
  <br><br>
  Hobbies:<br>
  <select name="hobbies" multiple size="6">
	  <option value="dancing">dancing</option>
	  <option value="fighting">fighting</option>
	  <option value="singing">singing</option>
	  <option value="playing">playing</option>
	  <option value="reading">reading books</option>
	  <option value="swimming">swimming</option>
</select>
<br><br>
Message:<br>
<textarea name="Message" rows="4" cols="50">
 
</textarea>
<input type="hidden" id="date" name="date" value="16/10/2018">
 <br><br>
  <input name="submit" type="submit" value="Submit">
</form> 

</body>
</html>