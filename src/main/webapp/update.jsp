<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<style type="text/css">
body{
	background-color: black;
	color:white;
	font-family: 'Muli',sans-serif;
} 
input{
	background-color: transparent;
	color:white;
	border:1px solid grey;
	margin-bottom:10px;
    width:200px;
	height:30px;
	border-radius:5px;
	border-top-left-radius:1px;
}
label{
	color: black;
}
input:focus {
	 outline: none;
	 border-color: #2d8cf0;
}
input:focus + label{
	 color: #2d8cf0;
}
table{
	position: absolute;
  top: 150px;
  left: 350px;
  width:60%;
}

 table, td,th {
  border:1px solid rgb(193, 187, 187);
  border-collapse: collapse;
}
td{
	text-align: center;
	color: rgb(205, 208, 210);
}
td:hover{
	color:black;
	background-color: white;
	transform: translateZ(-10px);
}
th:hover{
	color:black;
	background-color: white;
}
#b1{
  width:150px;
  height:30px;
  position: relative;
  top: 30px;
  left:40px;
  border-radius:4px;
  background: transparent;
  border: 1px solid rgb(252, 251, 251);
  color:white;
}
#b1:focus{
  color: black;
  background-color: white;
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
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="getit()">
	<h2 style='position:absolute;top:5px;left:760px;font-size:15px;'> <i class="fa-brands fa-slack"></i> EBSYSTEM</h2>
<h3 style='position:absolute;top:28px;left:740px;font-size:15px;'>Hello Employeee....</h3>
<p style='position:absolute;top:55px;left:735px;font-size:15px;'>Go Bills With charges</p>
<h2 class="blink">BILL IT</h2>    
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
    
    <p style='color:white;position: absolute;top: 290px;left: 600px;'>Bill No : <p id="billno" style='color:white;position: absolute;top: 290px;left:660px;'> </p> </p>
	<p style='color:white;position: absolute;top: 290px;left: 830px;'>units : <p id="units" style='color:white;position: absolute;top: 290px;left:880px;'> </p> </p>
	<p style='color:white;position: absolute;top: 290px;left: 1000px;'>units Cost : <p id="cost" style='color:white;position: absolute;top: 290px;left:1090px;'></p></p>
   
	<div style='position:absolute;top: 350px;left:680px;width:30%;'>
		<input type="text" id="fc" placeholder="Eneter fixed charges" value="10"> <label style='color: #2d8cf0;' readonly> Fixed Chargers</label> </input>
		<input type="text" id="cc" placeholder="Eneter Customer charges"> <label> Customer Chargers</label> </input>
    <input type="text" id="tu" placeholder="Eneter True - up"> <label> True - up</label> </input>
    <input type="text" id="a" placeholder="Eneter adjustment"> <label> adjustment</label> </input>
    <input type="text" id="ed" placeholder="Eneter Electricty Duty"> <label> Electricty Duty</label> </input>
    <input type="text" id="gc" placeholder="Eneter Grid charges"> <label> Grid Charges</label> </input>
    <input type="text" id="i" placeholder="Eneter interestoned"> <label> interestoned</label> </input>
    <input type="text" id="oc" placeholder="Eneter other charges"> <label> other charges</label> </input>
    <input type="text" id="sc" placeholder="Eneter sur charges"> <label> sur charges</label> </input>
    <button id="b1" onclick="charge()">Charges</button>
    <p id="error" style='position:relative;top:33px;left: 40px;'></p>
	</div>
  <i class='fa-brands fa-slack' style='font-size:20px;color:rgb(196, 191, 191);position: absolute;top:828px;left:770px;'><p style='font-size:10px;position:absolute;top:-4px;left:30px;width:40px;'>E B SYSTEM</p></i> 

</body>
<script type="text/javascript">
function getit(){
	var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/api/readbill";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			var data = JSON.parse(this.responseText);
			if(data!=""){
			for(var x in data){
				document.getElementById("billno").innerHTML = data[x].paymentno;
				document.getElementById("units").innerHTML = data[x].units;
				document.getElementById("cost").innerHTML = data[x].cost;
			}
			}
			else
				window.location.replace("employehome.jsp");
				
		}
	};	
}
 
 function charge(){
	    var xhtml = new XMLHttpRequest();
	    var c= document.getElementById("cost").innerHTML;
	    //alert(c);
	    //document.getElementById("b1").value = c;
		var url = "http://localhost:8080/api/updatebill/"+ cc.value +"/"+tu.value+"/"+a.value +"/"+ed.value+"/"+gc.value +"/"+i.value+"/"+oc.value+"/" + sc.value +"/" + c;
		xhtml.open("PUT", url, true);
		xhtml.setRequestHeader('Content-Type','application/json');
		xhtml.send();
		xhtml.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status == 200)
			{
				if(this.responseText == "charged billes")
					document.getElementById("error").innerHTML = "charged billes";		
			}
		};	
 }

</script>

</html>