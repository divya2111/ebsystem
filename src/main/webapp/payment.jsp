<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#div1{
width:101%;
height:80px;
background-color :gray;
position:absolute;
top:0px;
left:-10px;
}
table{
	position: absolute;
  top: 250px;
  left: 190px;
  width:80%;
  border-radius:10px;
}

body{
color:black;
font-family: 'Muli',sans-serif;
}
 table, td,th {
  border:1px solid rgb(193, 187, 187);
  border-collapse: collapse;
  padding:10px;
}
td{
	text-align: center;
}
th{
background-color:orange;
}
.address{
font-family: "Nunito", "Segoe UI", arial;
font-weight:560;
width:110px;
position:absolute;
top:50px;
left:230px;
color:#414747;
}
.address #i2{
margin-top:-17px;
}
input{
width:200px;
height:23px;
border:1px solid grey;
border-top: 30px solid #0097db3b;
border-radius:4px;
text-align:center;
margin-bottom:15px;
}
.right-row{
position:absolute;
top:60px;
left:470px;
}
.left-row{
position:absolute;
top:210px;
left:20px;
width:100%;
}

.left-row .i8{
position:relative;
top:-213px;
left:250px;
}

.left-row .i9{
position:relative;
top:-428px;
left:490px;
}

#open{
display:none;
width:400px;
height:710px;
box-shadow: 3px 3px 10px black;
position:absolute;
top:620px;
left:650px;
background: url(./images/border.png);
background-image:2px;
background-size: 108% 50px;
background-repeat: no-repeat;
border-radius:5px;
}

.btn{
     font-weight: 600;
    font-size: 12px;
    line-height: 7px;
    padding: 0.3vh 0.8rem;
    margin: 1px;
    letter-spacing: 0.5px;
    border: solid 2px #ededed !important;
}
.btn p{
color:#4D5252;
}
.btn span{
float: right;
color: #000;
    font-weight: bold;
    margin-left: 10px;
    padding: 5px 7px;
    position: relative;
    top: -23px;
}
#pay{
width:200%;
position:absolute;
top:200px;
left:-100px;
}


/*-------------------------------------------------------------------------------------------------------------------*/
.container {
  max-width: 620px;
  height:100px;
  margin: 150px auto 100px;
}



.form {
  border-radius: 15px;
  background-color: #fff;
  min-width: 100%;
  padding-top: 165px;
  position: relative;
  box-shadow: -5px 7px 32px 0px rgba(0, 0, 0, 0.35);
}

form {
  padding: 15px;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
}

.flex-row {
  width: 100%;
  margin-top:20px;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
}

.flex-column {
  width: 100%;
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
}

input.card-number,
input.card-name,
input.card-cvv,
table {
  width: 100%;
}

.card-number,.card-name,.card-cvv {
  padding: 10px;
  height: 30px;
  font-size: 18px;
  border: 1px solid #ccc;
  border-radius: 5px;
  outline-color: #4183f5;
}

label {
  display: block;
}

.table-column select {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  padding-left: 15px;
  width: 45%;
  height: 40px;
  margin-right: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background: url("https://img.icons8.com/external-those-icons-lineal-color-those-icons/24/000000/external-arrow-arrows-those-icons-lineal-color-those-icons-1.png");
  background-size: 15px;
  background-repeat: no-repeat;
  background-position-x: 125px;
  background-position-y: center;
  font-size: 18px;
  outline-color: #4183f5;
}

.table-column:last-child {
  width: 40%;
}

.card-submit {
  width: 100%;
  margin: 0 auto;
  color: #fff;
  font-size: 18px;
  height: 50px;
  border: none;
  border-radius: 5px;
  background-color: #2364d2;
  transition: background-color 250ms ease-in-out;
  margin-bottom:10px;
}

.card-submit:hover {
  background-color: #4183f5;
}

</style>
</head>
<body onload="name()" onpageshow="userbill()">
<div id="div1">
		<i class="fa-brands fa-slack" style='font-size:30px;color:rgb(196, 191, 191);position: absolute;top:8px;left:750px;'><p style='font-size:20px;position:absolute;top:-15px;left:35px;width:50px;'>E B S</p></i>
		<p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:30px;left:750px;'>electricity Billing System</p>
        <h1 style="position:absolute;top:65px;left:750px;font-size:19px;background-color:grey;padding:8px 10px;border-radius:5px;">payment</h1>
</div>

<div style="position:absolute;top:150px;left:640px;background-color:white;box-shadow:2px 5px 3px black;width:300px;height:250px;border-radius:5px;border:1px solid grey;">
<p style="margin-top:20px;font-weight:540;margin-left:60px"> Name : </p> <h3 id="name" style="position:absolute;top:7px;left:120px;font-size:15px;">f</h3>
<p style="margin-top:0px;font-weight:540;margin-left:60px"> Due date : </p> <h3 id="date" style="position:absolute;top:40px;left:140px;font-size:15px;color:red;">jhg</h3>
<p style="margin-top:0px;font-weight:540;margin-left:60px"> units : </p> <h3 id="unit" style="position:absolute;top:77px;left:110px;font-size:15px;"></h3>
<p style="margin-top:0px;font-weight:540;margin-left:60px"> Bill Amt : </p> <h3 id="bm" style="position:absolute;top:110px;left:125px;font-size:15px;color:green;"></h3>
<p style="margin-top:0px;font-weight:540;margin-left:60px"> E R O : </p> <h3 id="ero" style="position:absolute;top:142px;left:120px;font-size:15px;"></h3>
<p style="margin-top:0px;font-weight:540;margin-left:60px">Total Cost : </p> <h3 id="cost" style="position:absolute;top:177px;left:145px;font-size:15px;color:green;"></h3>

<div id="pay">
 <div class="container">
    <div class="form">
      <form action="#">
        <div class="flex-row">
          <label for="card-number" id="fcn">Card Number</label>
          <input name="card-number" class="card-number" type="text" id="cno" onblur="return cardno()" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" maxlength="19">
        </div>
        <div class="flex-row">
          <label for="card-name" id="fc">Holder Name</label>
          <input name="card-name" class="card-name" type="text" id="cn" onblur="return cardname()" value="">
        </div>
        <div class="flex-row" style="position:relative;top:-280px;left:-180px;">
          <table>
            <tr>
              <td class="table-column">
                <label for="month" id="fm">Expiration Date</label>
                <select name="month" id="month-select" onblur="return date()">
                  <option  value="" selected disabled>Month</option>
                  <option value="January">January</option>
                  <option value="February">February</option>
                  <option value="March">March</option>
                  <option value="April">April</option>
                  <option value="May">May</option>
                  <option value="June">June</option>
                  <option value="July">July</option>
                  <option value="August">August</option>
                  <option value="September">September</option>
                  <option value="October">October</option>
                  <option value="November">November</option>
                  <option value="December">December</option>
                </select>
                <select name="year" id="year-select" onblur="return date1()">
                  <option value="" selected disabled>Year</option>
                  <option value="2022">2022</option>
                  <option value="2023">2023</option>
                  <option value="2024">2024</option>
                  <option value="2025">2025</option>
                  <option value="2026">2026</option>
                  <option value="2027">2027</option>
                  <option value="2028">2028</option>
                  <option value="2029">2029</option>
                  <option value="2030">2030</option>
                </select>
              </td>
              <td class="table-column">
                <label for="card-cvv" id="fcvv">CVV</label>
                <input oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"   onblur="return cvv()" id="cardcvv"  name="card-cvv" class="card-cvv" type="password" style="margin-left:-10px;heigth:30px;" maxlength="3" >
              </td>
            </tr>          </table>
        </div>
        </form>
                 <div id="dotp" style="display:none;margin-left:20px;"><td>   <label style="position:absolute;top:468px;left:40px;">OTP</label>     <input maxlength="6" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" type="text" id="otp" style="width:300px;height:28px;border:1px solid grey;border-left:80px solid grey;" /> </td><td>   <button onclick="getotp()" id="botp">Get otp</button>  
                        <p id="gotp" style="position:absolute;top:437px;left:430px;font-weight:bold;color:red;">OTP</p></td></div>
        
        <div class="flex-row" style="position:relative;top:80px;">
          <input class="card-submit" type="submit" id="csub" value="pay" onclick="validate()">
        </div>
      
      
    </div>
  </div>
</div>

</div>
 <h1><i class="fa-brands fa-slack" style='font-size:50px;color:rgb(196, 191, 191);position: absolute;top:550px;left:770px;'><p style='font-size:40px;position:absolute;top:-35px;left:55px;width:100px;'>E B S</p></i>
 </h1>
 <p style="position: absolute;top:590px;left:730px;font-size:30px;color:blue;"> payment process</p>
<div id="display"></div>
</body>
<script type="text/javascript">
function name() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/getname";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText!=""){ 
			     document.getElementById("name").innerHTML = this.responseText;
			     }
			    else
			    window.location.replace("index.jsp");
				
		}
	};
}
</script>
<script type="text/javascript">
function userbill() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/getbyid";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			for(var x in data){
				document.getElementById("date").innerHTML = data[x].duedate;
				document.getElementById("unit").innerHTML = data[x].units;
				document.getElementById("cost").innerHTML = data[x].cost;
				document.getElementById("bm").innerHTML = data[x].BILL_AMT;
				document.getElementById("ero").innerHTML = data[x].ero;
			}
		}
	};
}
function cardno(){
	var c=document.getElementById("cno").value;
	if(c.length=='' || c.length<19){
		document.getElementById("cno").style.border = "2px solid red";
		document.getElementById("fcn").style.color = "red";
		document.getElementById("fcn").innerHTML = "Enter valid 16 numbers";
		return false;
	}
	else{
		document.getElementById("cno").style.border = "2px solid green";
		document.getElementById("fcn").style.color = "green";
		document.getElementById("fcn").innerHTML = "vaild";
		return true;
	}	
}
function cardname(){
	var c=document.getElementById("cn").value;
	if(c.length=='' || c.length<5){
		document.getElementById("cn").style.border = "2px solid red";
		document.getElementById("fc").style.color = "red";
		document.getElementById("fc").innerHTML = "Enter valid name";
		return false;
	}
	else{
		document.getElementById("cn").style.border = "2px solid green";
		document.getElementById("fc").style.color = "green";
		document.getElementById("fc").innerHTML = "vaild";
		return true;
	}
	
	
}

function cvv(){
	var c=document.getElementById("cardcvv").value;
	if(c.length=='' || c.length<3){
		document.getElementById("cardcvv").style.border = "2px solid red";
		document.getElementById("fcvv").style.color = "red";
		document.getElementById("fcvv").innerHTML = "Enter valid cvv";
		return false;
	}
	else{
		document.getElementById("cardcvv").style.border = "2px solid green";
		document.getElementById("fcvv").style.color = "green";
		document.getElementById("fcvv").innerHTML = "vaild";
		return true;
	}
	
	
}


function date(){
	var c=document.getElementById("month-select").value;
	if(c.length==''){
		alert("Please Select Month");
        thisForm.month.focus();
		return false;
	}
	else{
		return true;
	}	
}
function date1(){
	var y=document.getElementById("year-select").value;
if( y.length == ''){
	alert("Please Select Year");
    thisForm.month.focus();
	return false;
}
else{
	return true;
}	
}

function getotp(){
	    document.getElementById('botp').style.display='none';	
		document.getElementById('gotp').innerHTML=Math.floor((Math.random() * 1000000) + 1);
}


function validate(){
	if(date() == true && date1() == true && cvv() == true && cardname() == true &&  cardno() == true ){
			delete1();
	}	
}

function delete1(){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/delete";
	xhtml.open("DELETE", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	alert("Succefully done!");
	window.location.replace('userhome.jsp');
}

</script>
<script type="text/javascript">
document.getElementById('cno').addEventListener('input', function (e) {
	  e.target.value = e.target.value.replace(/[^\dA-Z]/g, '').replace(/(.{4})/g, '$1 ').trim();
	});
</script>
</html>