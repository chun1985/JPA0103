<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Supplier Data</title>
</head>
<body>
<script src="js/jquery3.5.1.min.js"></script>
Supplier ID: <input type="text" id="sid" value="103"/><br/>
Supplier Name: <input type="text" id="sname" value="Acer Computer Inc.,"/><br/>
state: <input type="text" id="state" value="TW"/><br/>
street: <input type="text" id="street" value="Kung Yuan Road"/><br/>
city: <input type="text" id="city" value="Taipei"/><br/>
zip: <input type="text" id="zip" value="100"/><p/>
<button id="add" >Add</button>&nbsp;
<button id="update" >update</button>&nbsp;
<button id="delete" >delete</button>
<p>
<div id="message"></div>
<script>
function result(data){
$("#message").html(data);
}
$(document).ready(function(){
	$("#add").click(function(){
		var id= $("#sid").val();
		var sname= $("#sname").val();
		var state= $("#state").val();
		var city= $("#city").val();
		var zip= $("#zip").val();
		var street= $("#street").val();	
		$.post("SupplierDAOServlet",{"id":id ,"sname":sname,"state":state,"city":city,"zip":zip,"street":street,"method":"add"},result);
		});
	$("#update").click(function(){
		var id= $("#sid").val();
		var sname= $("#sname").val();
		var state= $("#state").val();
		var city= $("#city").val();
		var zip= $("#zip").val();
		var street= $("#street").val();	
		$.post("SupplierDAOServlet",{"id":id ,"sname":sname,"state":state,"city":city,"zip":zip,"street":street,"method":"update"},result);
		});
	$("#delete").click(function(){
		var id= $("#sid").val();
		$.post("SupplierDAOServlet",{"id":id ,"method":"delete"},result);
		});
	});
</script>
</body>
</html>