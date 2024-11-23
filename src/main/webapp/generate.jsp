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

.div3{
	width:290px;
	height:220px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 190px;
	left:650px;
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
#div1{
	width:350px;
	height: 350px;
	background:transparent;
	border-radius :5px;
	position: absolute;
	top:480px;
	left:615px;
 }
 #t1,#t2,#t3{
	width:200px;
	height: 27px;
	background-color: rgb(130, 125, 125);
	border-radius: 3px;
	border: none;
    position: relative;
	top: 50px;
	margin:10px;
	margin-left:80px;
 }
 #b1{
	width: 130px;
	height: 25px;
	border-radius: 5px;
	border: none;
	background-color: rgb(131, 131, 135);
	position: absolute;
	top: 220px;
	left: 120px;
 }
 #l1,#l2,#l3{
 margin-bottom:-15px;
 }
</style>
</head>
<body onload="name()">
<h2 style='position:absolute;top:5px;left:760px;font-size:15px;'> <i class="fa-brands fa-slack"></i> EBSYSTEM</h2>
<h3 style='position:absolute;top:28px;left:740px;font-size:15px;'>Hello Employeee....</h3>
<p style='position:absolute;top:55px;left:735px;font-size:15px;'>Go Bills With charges</p>
<h2 class="blink">BILL IT</h2>
<!-- -----------------div3 -->

<div class="div3">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:13px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:75px;'>DATABASE GENERATE <i class="fa-solid fa-database" style='color:rgb(194, 193, 193)'></i></h3>
        			
          <label style='position:absolute;top:40px;left:30px;color:black;font-size:15px;'>If there is no user scno/phnumber/ <br><span style='margin-left:70px;'> go and click </span><br> generate.It will generate the users <span style='margin-left:70px;'>scno account </span></label>
		   <button id="B2">Generate</form>	
</div>


 <div id="div1">
            <p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:35px;left:80px;'><i class="fa-solid fa-user"></i> Enter name</p>
           <input  type="text" id="t1" placeholder="Enter Name"  onblur="return scno()"/>
          <p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:85px;left:80px;'><i class="fa-solid fa-scroll"></i> Enter Scno</p>
		   <input  type="text" id="t2" placeholder="Enter Scno" onblur="return  billno()"  maxlength="12" />
		  <p style='font-size:10px;color:rgb(196, 191, 191);position: absolute;top:135px;left:80px;'><i class="fa-solid fa-phone"></i> Enter Phonenumber</p> 
		   <input type="number" id="t3" placeholder="Enter phnum" onblur="return  phno()" />
		   <p id="error" style='position: absolute;top:175px;left: 158px;color:red;'></p>
		    <p id="error1" style='position: absolute;top:179px;left:108px;color:rgb(10, 209, 227);'></p>
		   
		   <button id="b1" onclick="generate()">Generate</button>
		   <p id="error1" style='position: absolute;top:179px;left:108px;color:rgb(10, 209, 227);'></p>
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



function scno(){
	var i1 = document.getElementById("t1");
	//document.getElementById("not1!").innerHTML = i1.value.length;
	if(i1.value=='' || i1.value.length>1 && i1.value.length <3){
		document.getElementById("t1").style.border = "2px solid red";
		document.getElementById("not").style.color = "red";
		document.getElementById("l1").style.color = "red";
		document.getElementById("not").innerHTML = "Enter name";
		return false;
	}
	else{
		document.getElementById("t1").style.border = "2px solid green";
		document.getElementById("not").style.color = "green";
		document.getElementById("l1").style.color = "green";
		document.getElementById("not").innerHTML = "correct";
		return true;
	}
}

function billno(){
	var i1 = document.getElementById("t2");
	//document.getElementById("not1!").innerHTML = i1.value.length;
	if(i1.value=='' || i1.value.length>0 && i1.value.length<12){
		document.getElementById("t2").style.border = "2px solid red";
		document.getElementById("not1").style.color = "red";
		document.getElementById("l2").style.color = "red";
		document.getElementById("not1").innerHTML = "Enter scno 12";
		return false;
	}
	else{
		document.getElementById("t2").style.border = "2px solid green";
		document.getElementById("not1").style.color = "green";
		document.getElementById("l2").style.color = "green";
		document.getElementById("not1").innerHTML = "correct";
		return true;
	}
}
function phno(){
	var i1 = document.getElementById("t3");
	//document.getElementById("not1!").innerHTML = i1.value.length;
	if(i1.value=='' || i1.value.length>0 && i1.value.length<10){
		document.getElementById("t3").style.border = "2px solid red";
		document.getElementById("not2").style.color = "red";
		document.getElementById("l3").style.color = "red";
		document.getElementById("not2").innerHTML = "Enter correct phno";
		return false;
	}
	else{
		document.getElementById("t3").style.border = "2px solid green";
		document.getElementById("not2").style.color = "green";
		document.getElementById("l3").style.color = "green";
		document.getElementById("not2").innerHTML = "correct";
		return true;
	}
}

function generate(){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/generate";
		xhtml.open("POST", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');	
		var name = document.getElementById("t1");
		var scno = document.getElementById("t2");
		var phnm = document.getElementById("t3"); 
		xhtml.send(JSON.stringify({
				billno : t2.value,
				name : t1.value,
				phnumber : t3.value,
			
			}));
		
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				if(this.responseText=="Error!")
			         document.getElementById("error").innerHTML = this.responseText;
				else
					document.getElementById("error1").innerHTML = this.responseText;
					
			}
		};
		
}
</script>
</html>