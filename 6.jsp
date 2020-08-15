<html>
<style>
     body
            {
                background-image:url(ven.jpg);
                background-repeat: no-repeat;
                background-position:center;
                background-size: cover;
            }
li{font-size:25;
	list-style-type: none;
	text-align: center;
	text-shadow: 5px;
	color: white;
	font-family: cursive;
}
h{
	font-size: 35;
	font-family: cursive;
	color: white;

}
p{
	font-size: 25;
	font-family: cursive;
	color: skyblue; 
}
fieldset{
	border-color: white;
	width: 50%;
}
legend
{
	font-size: 20;
	font-family: monospace;
	color:red;
	background-color: white;
}
form{
	font-size: 20;
	color:yellow;
}
option{
	font-family: monospace;
	color:red;
	font-size: 15;
}
.su:hover{
	color:orange;
	background-color: green;
	font-size: 20;
}
.su{
	color:green;
	background-color: orange;
	width:120px;
	height:40px;
	font-size: 25;

}
</style>
<body background="bg2.jpg">
<center>	
<h><b>Welcome our beloved user...</b></h><br><br><br>
<fieldset>
	<legend>PLACE YOUR ORDER HERE....</legend>
<form  action="7.jsp" method="post">
Customer ID:<input type="number" name="ii" required><br><br>
Restaurant ID:<input type="number" name="i" required><br><br>
Food ID:<input type="number" name="j" required><br><br>
Order items:<input type="text" name="k" required><br><br>
Number of items:<input type="number" name="l" required><br><br>
<p>Rate the restaurant:<input type="checkbox" name="e" value="1" ><input type="checkbox" name="e" value="1"><input type="checkbox" name="e" value="1" ><input type="checkbox" name="e"  value="1"><input type="checkbox" name="e"  value="1"><br><p>
<input class=su type="SUBMIT"  name="submit"value="SUBMIT" width=100% height=100%><br><br>
</form>
</fieldset>
<br><brs>
<fieldset><legend>AVAIL YOUR DISCOUNT</legend>
<form action="b.jsp" method="post">
<input type=number name=ff placeholder="Enter food id"></input><br><br>
<input type=number name=mm placeholder="Enter customer id">
<button>go</button>
</form>
</fieldset>
<br><br>
<fieldset><legend>UPDATE YOUR ORDER...</legend>
<form action="c.jsp" method="post">
<input type=number name=ff placeholder="Enter order id"></input><br><br>
<input type=number name=mm placeholder="Enter number of items"><br><br>
<input type=number name=nn placeholder="Enter customer id"></input>
<button>go</button>
</form>
</fieldset>


</center>
</body>
</html>