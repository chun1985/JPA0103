<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JPG</title>
</head>
<body>
<script src="js/jquery3.5.1.min.js"></script>
<img id="pic1" src="images/cups.jpg" width="640" height="360"/>
<script>
  var count=0;
  
  window.setInterval(function(){
      count++;
      $.get("PictureServlet",{"id":count},function (path){
  	    $("#pic1").attr("src", path);
      });
  }, 3000);
</script>
</body>
</html>