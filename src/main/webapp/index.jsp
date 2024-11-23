<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body{
background-image: url("./images/ebspic.jpg");
background-repeat: no-repeat;
background-size: cover;
font-family: 'Muli',sans-serif;
}
#login{
width : 250px;
height : 250px;
background-color: transparent;
border:2px solid black;
position: absolute;
top : 200px;
left : 100px;
}
table{
	position: absolute;
  top: 70px;
  left: 880px;
  width:30%;
}

 table, td,th {
  border:1px solid rgb(193, 187, 187);
  border-collapse: collapse;
}
td,th{
	text-align: center;
	color: rgb(205, 208, 210);
}
td:hover{
	color:white;
	background-color: white;
	transform: translateZ(-10px);
}
th:hover{
	color:white;
	background-color: white;
}
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style='text-align:left;'>
<h1 style="font-size: 50px;">ELECTRICITY BILLING  </h1>

<h3 style="font-size: 25px; 'text-align: left'">Welcome to user bills</h3>
<a style="margin-left: 1190px; position:absolute; top:30px; " href="employee.jsp">employee</a>
<div id="login">
<p style="font-weight: 560; color: white;text-align:center;"> login </p>
<p style="font-weight: 560; color:white; position: absolute;font-size: 10px;top:45px; left:100px; "> Enter scno </p>
<input type="text" id="billno" style="background-color: transparent; border:1px solid white; border-radius: 3px; height: 25px; width: 200px;color:white; position:absolute; top:70px; left:25px;" placeholder="scno" maxlength=12> 
<p style="font-weight: 560; color:white; position: absolute;font-size: 10px;top:110px; left:80px; "> Enter password </p>
<input type="password" id="password" style="background-color: transparent; border:1px solid white; border-radius: 3px; height: 25px; width: 200px;color:white; position:absolute; top:135px; left:25px;" placeholder="paasword" maxlength=12>
<a href="forgotpassword.jsp" style=" position: absolute; top: 170px; left: 140px;font-size: 10px; color: white;">forgot password </a> 
<button onclick="login()" style="position: absolute; top: 200px; left: 80px; width:100px; height: 20px; color:black; background-color: white;border-radius: 3px;border:none;"> login </button>
<p id="error" style="position: absolute; top: 210px; left: 110px; font-size: 15px; color: red;">  </p>
</div>

	<table>
		<tr>
			<th>units</th>
			<th>0 - 30</th>
			<th>31 - 75</th>
			<th>76 - 125</th>
			<th>126 - 225</th>
			<th>226 - 400</th>
			<th> >400 </th>
		</tr>
		<tr>
			<td>Fixed Charges</td>
			<td>10</td>
			<td>10</td><td>10</td><td>10</td><td>10</td><td>10</td>
		</tr>
		<tr>
			<td>Customer Charges</td>
			<td>25</td><td>30</td><td>45</td><td>50</td><td>55</td><td>55</td>
		</tr>
		<tr>
			<td>Electricty duty</td>
			<td>10</td><td>11.46</td><td>11.46</td><td>11.46</td><td>15</td><td>15</td>
		</tr>
		<tr>
			<td>Tree-Up</td>
			<td>67.39</td><td>67.39</td><td>67.39</td><td>67.39</td><td>67.39</td><td>67.39</td>
		</tr>
		<tr>
			<td>Sub-charges</td>
			<td>20</td><td>30</td><td>40</td><td>50</td><td>60</td><td>60</td>
		</tr>
	</table>
<p id="Note" style="position: absolute; top: 280px; left: 900px; font-size: 10px; color: white;"> NOTE: FOLLOW THE INSTRUCTIONS CORRECTLY ACCORDING <br> TO THE TABLE FOR CALCULATING THE CHARGES BASED ON THE UNITS CONSUMES </p>
</body>
<script type="text/javascript">
function login() {
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/login/"+ billno.value +"/" + password.value;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	var error = document.getElementById("error");
	
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			//alert(this.responseText);
			var inner1=document.getElementById("empass");
			if(this.responseText == "wrong password"){
				
			    document.getElementById("error").innerHTML="wrong password";
			    
			}
			else{
				window.location.replace('userhome.jsp');
			}
		}
	};
	
}

</script>
</html>