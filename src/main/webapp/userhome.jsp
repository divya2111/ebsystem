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
</style>
</head>
<body onload="name()">
<div id="div1">
		
        <h1 id="name" style="position:absolute;top:65px;left:750px;font-size:19px;background-color:grey;padding:8px 10px;border-radius:5px;"></h1>
</div>


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
		         table();
			     }
			    else
			    window.location.replace("index.jsp");
				
		}
	};
}
function table(){
	var xhtml = new XMLHttpRequest();
	//var E = document.getElementById("events");
	var url = "http://localhost:8080/user/getbills";
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();

	var display = document.getElementById("display");

	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
			 count = 0;
			var data = JSON.parse(this.responseText);
			var table = "<table>";
			table += "<tr> <th>ID</th> <th>Service Number</th> <th>Customer Name</th> <th>Section Name</th> <th>Phone number</th>  <th>Release Date</th> </tr>";
			for(var x in data)
			{
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='user/readbills/"+data[x].id+"'>"+ data[x].servicenumber +" </a></td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
				//table += "<tr> <td>"+ count++ +"</td> <td> <a href='userbillshow.jsp'>"+ data[x].servicenumber +" </a></td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
				table += "<tr> <td>"+ count++ +"</td> <td> <a href='#' onclick=\"newTabOpen('"+data[x].id+"')\">"+data[x].servicenumber+"</a> </td> <td>"+ data[x].name +"</td> <td>"+ data[x].sectionoffice +"</td> <td>"+data[x].phno+"</td> <td> "+data[x].billdate+"</td>  </tr>";
			}
			table += "</table>";
			display.innerHTML = table;
		}
	};
	
}

function newTabOpen(eid)
{
    var xhtml = new XMLHttpRequest();
	var url = "http://localhost:8080/user/readbills/"+eid;
	xhtml.open("GET", url, true);
	xhtml.setRequestHeader('Content-Type','application/json');
	xhtml.send();
	xhtml.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
		{
            if(this.responseText == "succesful")
            {
                	  window.location.replace("payment.jsp");
              }
		}
	};
}

</script>
</html>