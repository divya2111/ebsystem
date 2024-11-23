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
left:680px;
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
	left:120px;
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
	left:560px;
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
	left:950px;
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
	left:550px;
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
</style>
</head>
<body >
<h2 style='position:absolute;top:5px;left:640px;font-size:15px;'> <i class="fa-brands fa-slack"></i> EBSYSTEM</h2>
<h3 style='position:absolute;top:28px;left:640px;font-size:15px;'>Hello Employeee....</h3>
<p style='position:absolute;top:55px;left:635px;font-size:15px;'>Go Bills With charges</p>
<h2 class="blink">BILL IT</h2>
<div class="div1">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:110px;'>Login <i class="fa-solid fa-boxes-packing" style='color:rgb(194, 193, 193)'></i></h3>
         
          <p style='color:rgb(141, 141, 134);font-weight:550;font-size:10px;position: absolute;top:40px;left:50px;'>EMPNAME : </p>
          <input type="text" id="empid"/> <i class="fa-solid fa-user-tie" style='position: absolute;top:74px;left:70px;color: rgb(65, 65, 65);'></i>
          <p style='color:rgb(141, 141, 134);font-weight:550;font-size:10px;position: absolute;top:99px;left:52px;'>PASSWORD : </p>
          
          <input type="password" id="empass" /> <i class="fa-solid fa-lock" style='position: absolute;top:130px;left:69px;color: rgb(65, 65, 65);'></i>
          <p id="error"></p>
          <button id="b1" onclick="elogin()">start bills <i class="fa-solid fa-play" style='color:rgb(0, 0, 0)'></i></button>
          <p style='color:red;position: absolute;top:210px;left:82px;font-weight:600px;' id="lerror"></p>
         
</div>


<!-- ----------------------div2 -->

<div class="div2">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:14px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:90px;'>DATABASE BILL <i class="fa-solid fa-database" style='color:rgb(194, 193, 193)'></i></h3>
        			
            <i class="fa-solid fa-user" style='color:black;position:absolute;left:140px;top:50px;font-size:25px;'></i>
			<label style='position:absolute;top:85px;left:40px;color:black;font-size:10px;'>enter user scno:-</label>
            <input type="text" id="i1" placeholder="Enter Scno" onblur="return block()" readonly/>
            <p style='color:red;position: absolute;top: 105px;left:100px;font-size:10px;' id="not!"></p>
            <p style='color:red;position: absolute;top: 155px;left:100px;font-size:10px;' id="not1!"></p>
            <i class="fa-solid fa-lock" style='color:black;font-size:35px;position:absolute;top:145px;left:125px;'></i>			
</div>


<!-- -----------------div3 -->

<div class="div3">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:13px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:75px;'>DATABASE GENERATE <i class="fa-solid fa-database" style='color:rgb(194, 193, 193)'></i></h3>
        			
          <label style='position:absolute;top:40px;left:30px;color:black;font-size:15px;'>If there is no user scno/phnumber/ <br><span style='margin-left:70px;'> go and click </span><br> generate.It will generate the users <span style='margin-left:70px;'>scno account </span></label>
		   <button id="B2"><i class="fa-solid fa-lock" style='color:black;'></i></form></button>		
</div>

<!-- ------------------div 4 -->

<div class="div4">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:14px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:90px;'>UPDATE BILL <i class="fa-solid fa-database" style='color:rgb(194, 193, 193)'></i></h3>
            <label style='position:absolute;top:62px;left:40px;color:black;font-size:10px;'>enter user scno:-</label>
            <input type="text" id="i11" placeholder="Enter Scno"  readonly />
			<label style='position:absolute;top:112px;left:40px;color:black;font-size:10px;'>select payment no:-</label>
            <select type="text" id="i12" ><option>select payment no</option></select>
			<i class="fa-solid fa-lock" style='color:black;font-size:35px;position:absolute;top:175px;left:125px;'></i>			
				
          </div>
<div style='color:white;position: absolute;top:850px;left: 570px;width:350px;'>
<h4 style='position:relative;left:25px;'>You any Queries contact data centers</h4>
           <h5>Electricity Bill means the invoice sent every month to customers or consumers stating in detail all components, charges or rates that are part of the total amount that every customer or consumer must pay for <span style='margin-left:130px;'>using electricity.</span></h5>
           <i class='fa-brands fa-slack' style='font-size:25px;color:rgb(196, 191, 191);position: absolute;top:160px;left:150px;'><p style='font-size:15px;position:absolute;top:-8px;left:30px;width:40px;'>E B SYSTEM</p></i> 
</div>
</body>
<script type="text/javascript">

function elogin() 
{
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/login/"+ empid.value +"/" + empass.value;
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
				
				document.getElementById("empass").style.border = "2px solid red";
				
				document.getElementById("lerror").innerHTML = this.responseText;
				document.getElementById("empass").style.borderLeft = "50px solid red";
			}
			else{
             document.getElementById("lerror").style.color = "Green";
				document.getElementById("lerror").innerHTML = this.responseText;
				window.location.replace("employehome.jsp");
			}
		}
	};
}

</script>
</html>