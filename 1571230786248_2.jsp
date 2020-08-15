<html>
<style>
body{
	background-color: black;
	background-repeat: no-repeat;
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
	font-size: 25;

}
</style>
<body background="bg2.jpg">
<center>	
<h><b>Welcome...</b></h><br><br><br>
<fieldset>
	<legend>GIVE YOUR DETAILS HERE....</legend>
<form  action="3.jsp" method="post">
Restaurant ID:<input type="number" name="a" required><br><br>
Restaurant Name:<input type="text" name="ab" required><br><br>
Address:<input type="text" name="b" required><br><br>
Contact number:<input type="number" name="c" required><br><br>
Type:<input type="text" name="d" required><br><br>
Location:<input type="text" name="ca" required><br><br>
Area:<input type="text" name="cb" required><br><br>
<br>
<input class=su type="SUBMIT"  name="submit"value="SUBMIT" width=100% height=100%><br><br>
</form>
</fieldset>
<br><fieldset><legend>FAQ's</legend>
<form method='POST' action=7a.jsp>
	<input type=text placeholder="Your Restaurant Id" name="a" required><br><br>
<select name="c" placeholder="Frequently asked questions...(FAQ's) required">
	<option value="POCO F1 Xiomi" name="c">Frequently asked questions...(FAQ's)</option>
	<option value="ord" name="c">How many number of orders placed?</option>
	<option value="cus" name="c">What is name and phone number of the customer who bought for highest price?</option>
</select>
	<button>GO</button>
</form></fieldset>
<br><br>
<a href="4.jsp"><input class=su type="SUBMIT"  name="submit1" value="GO TO ORDER REGISTRATION PAGE..." width=100% height=100%><br><br></a><br>
</center>
</body>
</html>
