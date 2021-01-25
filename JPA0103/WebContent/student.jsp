<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student page</title>
</head>
<body>
<script src="js/jquery3.5.1.min.js"></script>
Student ID:	<input type="text" id="sid" value="107" />
	<br /> 
Student Name:<input type="text" id="sname" value="Alan" />
	<br /> 
Age :	<input type="text" id="age" value="20" /><p/>
	<button id="query">Query</button>&nbsp;
	<button id="update">Update</button>&nbsp;
	<button id="add">add</button>&nbsp;
	<button id="del">delete</button>
	<div id="message"></div>
	<script>
	         function rs(data){
		            $("#message").html(data);
		     }         
             $(document).ready(function(){
                 $("#query").click(function(){
  		           $.get("StudentServlet",rs);
   		      });
                 $("#update").click(function(){
		          var id=$("#sid").val();
		          var n=$("#sname").val();
		          var a =$("#age").val();
		          $.post("UpdateStudentServlet",{"sid":id , "sname": n , "age":a   },rs);
		      });
                 $("#add").click(function(){
		          var id=$("#sid").val();
		          var n=$("#sname").val();
		          var a =$("#age").val();
		          $.post("AddStudentServlet",{"sid":id , "sname": n , "age":a   },rs);
		      });
                 $("#del").click(function(){
		          var id=$("#sid").val();
		          $.post("DeleteStudentServlet",{"sid":id},rs);
		      });
             });
	</script>
</body>
</html>