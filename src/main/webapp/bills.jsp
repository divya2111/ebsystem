<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
body{
     background-color: black;
     font-family: 'Muli',sans-serif;
	 color:white;
 }

input{
	width:180px;
	height: 25px;
	background-color: rgb(118, 121, 122);
	border: none;
	border-radius:4px;
	border-left:130px solid rgb(189, 187, 187);
	margin-bottom:10px;
}
#div1{
	position: absolute;
	top:520px;
	left: 630px;
    width: 20%;
	
}
#b1{
	width: 160px;
	height: 30px;
	background-color: rgb(226, 221, 218);
	border: none;
	border-radius: 3px;
	margin-top:20px;
	margin-left:70px;
	color: black;
}
#b1:focus{
	background-color: aqua;
	transition: 1.1s;
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
       
       .div2{
	width:290px;
	height:220px;
	background-color: rgb(100, 100, 97);
	border-radius: 10px;
	position: absolute;
	top: 190px;
	left:640px;
	border-top:50px solid rgb(173, 172, 172);
}
#i11{
width:180px;
	height:25px;
	background-color: rgb(186, 181, 181);
	border: none;
	border-radius: 2px;
	position: absolute;
	top:100px;
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

</style>
<title>Insert title here</title>
</head>
<body onload="onload()">
<h2 style='position:absolute;top:5px;left:760px;font-size:15px;'> <i class="fa-brands fa-slack"></i> EBSYSTEM</h2>
<h3 style='position:absolute;top:28px;left:740px;font-size:15px;'>Hello Employeee....</h3>
<p style='position:absolute;top:55px;left:735px;font-size:15px;'>Go Bills With charges</p>
<h2 class="blink">BILL IT</h2>

<!-- ----------------------div2 ------------------>

<div class="div2">
        <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:-38px;left:95px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:100px;'>E B S Y S T E M</p></i> 
         <h3 style='font-size:14px;color:rgb(196, 191, 191);position: absolute;top:-5px;left:90px;'>DATABASE BILL <i class="fa-solid fa-database" style='color:rgb(194, 193, 193)'></i></h3>
        			
            <i class="fa-solid fa-user" style='color:black;position:absolute;left:140px;top:50px;font-size:25px;'></i>
			<label style='position:absolute;top:85px;left:40px;color:black;font-size:10px;'>enter user scno:-</label>
            <input type="text" id="i11" placeholder="Enter Scno" readonly/>
           <button id="B1">Bills</button>		
           <p id="not1!" style='color:red;position: absolute;top:165px;left:98px;font-weight:600;'></p>
          <p style='color:red;position: absolute;top:210px;left:108px;font-weight:600px;' id="not!"></p>

</div>

				  <div id="div1">
		  <p style='color:rgb(47, 46, 46);position:absolute;top: -4px;left:20px;font-size:12px;'><i class="fa-solid fa-user" style='font-size:10px;'></i> service number:</p>
		  <input type="text" id="i1"  readonly></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top: 30px;left:18px;font-size:12px;'><i class="fa-sharp fa-solid fa-arrow-up-9-1"></i> Customer name:</p>
		  <input type="text" id="i2"  readonly></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top: 69px;left:18px;font-size:12px;'><i class="fa-solid fa-phone"></i> Contact number :</p>
		  <input type="text" id="i3"  readonly></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:105px;left:18px;font-size:12px;'><i class="fa-solid fa-briefcase"></i> Section office :</p>
		  <input type="text" id="i4" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:142px;left:25px;font-size:12px;'><i class="fa-sharp fa-solid fa-building"></i> Address :</p>
		  <input type="text" id="i5" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:179px;left:25px;font-size:12px;'><i class="fa-solid fa-user-tie"></i> E R O :</p>
		  <input type="text" id="i6" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:216px;left:18px;font-size:12px;'><i class="fa-solid fa-clone"></i> Category :</p>
		  <input type="text" id="i7" required></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:251px;left:18px;font-size:12px;'><i class="fa-sharp fa-solid fa-calendar"></i> Bill date :</p>
		  <input type="date" id="i8" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:289px;left:18px;font-size:12px;'><i class="fa-solid fa-clock"></i> Due date :</p>
		  <input type="date" id="i9" placeholder="Due Date" required ></input>
		  <p style='color:rgb(47, 46, 46);position:absolute;top:323px;left:18px;font-size:12px;'><i class="fa-brands fa-unity"></i> Total units :</p>
		  <input type="text" id="i10" placeholder="Unit per kwh" required></input>

		  <button id="b1" onclick="generate()">Bill it</button>
		  <h5 style='margin-left:70px;'>This is powered by</h5>
		  <i class='fab fa-gg' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:436px;left:193px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B S</p></i> 
              <p id="e" style='color:rgb(0, 255, 60);position: absolute;top:346px;left:33px;'></p> <p id="pynb" style='color:rgb(0, 255, 60);position: absolute;top:346px;left:173px;'></p>
		  <p id="e1" style='color:red;position: absolute;top:346px;left:103px;'></p>
		  </div>
		</body>
		
	<script type="text/javascript">
	function onload(){
		var xhtml = new XMLHttpRequest();
		var url = "http://localhost:8080/api/loadusers";
		xhtml.open("GET", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				var data = JSON.parse(this.responseText);
				if(data!=null){
				for(var x in data){
					document.getElementById("i1").value = data[x].billno;
					document.getElementById("i11").value = data[x].billno;
					document.getElementById("i2").value = data[x].name;
					document.getElementById("i3").value = data[x].phnumber;
				}
				}
				else
					window.location.replace("employehome.jsp");
					
			}
		};
	}
	</script>
	
	
	<script type="text/javascript">
	 function generate(){
			var xhtml = new XMLHttpRequest();
			var url = "http://localhost:8080/api/billit";
			xhtml.open("POST", url, true);
			xhtml.setRequestHeader('Content-Type','application/json');	
			var x = Math.floor((Math.random() * 100000000) + 1);
			xhtml.send(JSON.stringify({
				address : i5.value,
			      billdate : i8.value,
			        caterogy : i7.value,
			        duedate : i9.value,
			        ero : i6.value,
			        name : i2.value,
			        paymentno : x,
			        phno : i3.value,
			        sectionoffice : i4.value,
			        servicenumber : i1.value,
			        units : i10.value,
				}));
			
			
			xhtml.onreadystatechange = function()
			{
				if(this.readyState == 4 && this.status == 200)
				{
					  if(this.responseText=="succefully billed"){
			               document.getElementById("e").innerHTML = "succesfully billed it";
			               document.getElementById("pynb").innerHTML = x;
			        }
			        else
			          document.getElementById("e1").innerHTML = this.responseText;
				}
			};
			
	 }
	
	</script>
</html>