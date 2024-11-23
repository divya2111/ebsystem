<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-color: black;
font-family: 'Muli',sans-serif;
color:white;
}
.blink{
position:absolute;
top:90px;
left:760px;
}

.blink {
                animation: blinker 1.1s linear infinite;
                
                
            }
            @keyframes blinker {
                80% {
                    opacity: 0;
                }
       }
.div1{
	width:290px;
	height:220px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 190px;
	left:150px;
	border-top:50px solid rgb(173, 172, 172);
}
#empid{
  width: 150px;
  height: 25px;
  border-radius:5px;
  position: absolute;
  left: 50px;
  top: 68px;
  border: none;
  background-color: rgb(144, 140, 140);
  border-left:50px solid rgb(186, 186, 179);
}
#empass{
  width: 150px;
  height: 25px;
  border-radius:5px;
  position: absolute;
  left: 50px;
  top: 125px;
  border: none;
  background-color: rgb(144, 140, 140);
  border-left:50px solid rgb(186, 186, 179);
}
#b1{
  background-color:rgb(164, 170, 170);
  width:110px;
  height:30px;
  border:none;
  border-radius:5px;
  position:absolute;
  top:170px;
  left:90px;
  font-weight:bold;
}
.div2{
	width:290px;
	height:220px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 190px;
	left:600px;
	border-top:50px solid rgb(173, 172, 172);
}
#i1{
width:180px;
	height:25px;
	background-color: rgb(186, 181, 181);
	border: none;
	border-radius: 2px;
	position: absolute;
	top:100px;
	left:40px;
}

.div3{
	width:290px;
	height:220px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 190px;
	left:1050px;
	border-top:50px solid rgb(173, 172, 172);
}
#B2{
	width:100px;
	height: 30px;
	background-color: rgb(109, 111, 112);
	position: absolute;
	top: 125px;
	left:88px;
	border-radius:4px;
	border:2px solid rgb(0, 0, 0);
}
.div4{
	width:290px;
	height:220px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 550px;
	left:600px;
	border-top:50px solid rgb(173, 172, 172);
}
#i11{
	width:180px;
	height:25px;
	background-color: rgb(186, 181, 181);
	border: none;
	border-radius: 2px;
	position: absolute;
	top:75px;
	left:40px;
}
#i12{
	width:180px;
	height:25px;
	background-color: rgb(186, 181, 181);
	border: none;
	border-radius: 2px;
	position: absolute;
	top:125px;
	left:40px;
}
#B1{
	width:100px;
	height: 30px;
	background-color: rgb(109, 111, 112);
	position: absolute;
	top: 140px;
	left:100px;
	border-radius:4px;

}
#bu{
	width:100px;
	height: 30px;
	background-color: rgb(100, 100, 97);
	position: absolute;
	top: 170px;
	left:88px;
	border-radius:4px;
	border:2px solid rgb(0, 0, 0);
}
#bu:hover{
	background-color: black;
	color: white;
}
</style>
</head>
<body onload="name()">
<h2 style='position:absolute;top:5px;left:760px;font-size:15px;'> <i class="fa-brands fa-slack"></i> EBSYSTEM</h2>
<h3 style='position:absolute;top:28px;left:740px;font-size:15px;'>Hello Employeee....</h3>
<p style='position:absolute;top:55px;left:735px;font-size:15px;'>Go Bills With charges</p>
<h2 class="blink">BILL IT</h2>
<div class="div1">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:110px;'>Login <i class="fa-solid fa-boxes-packing" style='color:rgb(194, 193, 193)'></i></h3>
          <h3 style='font-size:20px;color:#70DC10;position: absolute;top:30px;left:100px;'>Succesfull</h3>
          <i class="fa-solid fa-circle-check" style='font-size:40px;color:#70DC10;position:absolute;top:80px;left:130px;'></i><i class="fa-sharp fa-solid fa-badge-check"></i>
          <p style='font-size:15px;position:absolute;top:120px;left:90px;'> Name : <p style='font-size:15px;position:absolute;top:120px;left:150px;' id="empname"> </p></p>
         <button onclick="logout()" style='width:100px;height: 30px;background-color: rgb(109, 111, 112);position: absolute;top: 165px;left:95px;border-radius:4px;border:2px solid rgb(0, 0, 0);'>Logout</button></div>


<!-- ----------------------div2 ------------------>

<div class="div2">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:14px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:90px;'>DATABASE BILL <i class="fa-solid fa-database" style='color:rgb(194, 193, 193)'></i></h3>
        			
            <i class="fa-solid fa-user" style='color:black;position:absolute;left:140px;top:50px;font-size:25px;'></i>
			<label style='position:absolute;top:85px;left:40px;color:black;font-size:10px;'>enter user scno:-</label>
            <input type="text" id="i1" placeholder="Enter Scno" onblur="return block()"/>
           <button id="B1" onclick="scno()">Bills</button>		
           <p id="not1!" style='color:red;position: absolute;top:165px;left:98px;font-weight:600;'></p>
          <p style='color:red;position: absolute;top:210px;left:108px;font-weight:600px;' id="not!"></p>

</div>


<!-- -----------------div3 -->

<div class="div3">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:13px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:75px;'>DATABASE GENERATE <i class="fa-solid fa-database" style='color:rgb(194, 193, 193)'></i></h3>
        			
          <label style='position:absolute;top:40px;left:30px;color:black;font-size:15px;'>If there is no user scno/phnumber/ <br><span style='margin-left:70px;'> go and click </span><br> generate.It will generate the users <span style='margin-left:70px;'>scno account </span></label>
		   <form action="generate.jsp"><button id="B2">Generate</form></button>		
</div>

<!-- ------------------div 4 -->

<div class="div4">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:14px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:90px;'>UPDATE BILL <i class="fa-solid fa-database" style='color:rgb(194, 193, 193)'></i></h3>
            <label style='position:absolute;top:62px;left:40px;color:black;font-size:10px;'>enter user scno:-</label>
            <input type="text" id="i11" placeholder="Enter Scno" onblur="return block1()" />
			<label style='position:absolute;top:110px;left:40px;color:black;font-size:10px;'>select payment no:-</label>
            <select type="text" id="i12" ><option>select payment no</option></select>
			<input type="button" onclick="update()" ondblclick="update1()" value="Ubill" id="bu" />		
				
          </div>
          
          <!-- -------------Waste  -->
<div style='color:white;position: absolute;top:850px;left: 570px;width:350px;'>
<h4 style='position:relative;left:25px;'>You any Queries contact data centers</h4>
           <h5>Electricity Bill means the invoice sent every month to customers or consumers stating in detail all components, charges or rates that are part of the total amount that every customer or consumer must pay for <span style='margin-left:130px;'>using electricity.</span></h5>
           <i class='fa-brands fa-slack' style='font-size:25px;color:rgb(196, 191, 191);position: absolute;top:160px;left:150px;'><p style='font-size:15px;position:absolute;top:-8px;left:30px;width:40px;'>E B SYSTEM</p></i> 
</div>
</body>
<script type="text/javascript">

function name() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/employeehome";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText!="") 
		         document.getElementById("empname").innerHTML = this.responseText;
			     else
			    	window.location.replace("employee.jsp");
				
		}
	};
}

function logout() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/logout";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{	
			window.location.replace("employee.jsp");
		}
	};
}

function scno(){
	var xhtml = new XMLHttpRequest();
	var sco = document.getElementById("i1");
	var url = "http://localhost:8080/api/bills/"+sco.value;
	xhtml.open("GET",url,true);
	xhtml.setRequestHeader('Content-Type','application/json');
	if(block()){
	xhtml.send();
	} 
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			     if(this.responseText == 'Not Found')
		         document.getElementById("not!").innerHTML = this.responseText;
			     else
			    	 {
			    	 window.location.replace("bills.jsp");
			    	 }
				
		}
	};
}

function block(){
	var i1 = document.getElementById("i1");
	//document.getElementById("not1!").innerHTML = i1.value.length;
	if(i1.value.length>0 && i1.value.length <12){
		document.getElementById("i1").style.border = "2px solid red";
		document.getElementById("not1!").style.color = "red";
		document.getElementById("not1!").innerHTML = "Enter 12 scno";
		return false;
	}
	else{
		document.getElementById("i1").style.border = "2px solid green";
		document.getElementById("not1!").style.color = "green";
		document.getElementById("not1!").innerHTML = "correct";
		return true;
	}
}

function update(){
	  var x = document.getElementById("i12").value;
	  document.getElementById("bu").value = x;
}
function update1(){
	
	var xhtml = new XMLHttpRequest();
	var x = document.getElementById("i12").value
	var url = "http://localhost:8080/api/id/"+x;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
		   document.getElementById("bu").value = this.responseText;
		   window.location.replace("update.jsp");
				
		}
	};
}
function block1(){
	var i1 = document.getElementById("i11");
	//document.getElementById("not1!").innerHTML = i1.value.length;
	if(i1.value.length>0 && i1.value.length <12){
		document.getElementById("i11").style.border = "2px solid red";
		document.getElementById("i11").style.color = "red";
		document.getElementById("i11").value = "Enter 12 scno";
		return false;
	}
	else{
		document.getElementById("i11").style.border = "2px solid green";
		document.getElementById("i11").style.color = "green";
		
		var sv = document.getElementById("i11");
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/serviceno/"+sv.value;
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		var E = document.getElementById("i12");
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				E.innerHTML="";
				for(var x in data)
				{
					var option = document.createElement("option");
					option.value = data[x].id;
					option.text = data[x].paymentno;
					E.add(option);
				}
			}
		};
		return true;
	}
}
</script>
</html>