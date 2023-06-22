
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Product</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Header Example</title>
  <style>
    /* Header Styles */
    header {
      background-color: #99e2aa;
      color: #fff;
      padding: 10px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    header a {
      color: black;
      text-decoration: none;
      padding: 10px;
    }
    .logo {
      font-size: 24px;
      font-weight: bold;
    }
    nav ul {
      list-style: none;
      margin: 0;
      padding: 0;
      display: flex;
    }
    nav li {
      position: relative;
      margin-right: 20px;
    }

    nav li a {
      display: block;
      padding: 10px;
      font-weight: bold;
    }
    body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}
		
		h1 {
			text-align: center;
			margin-top: 50px;
			color: #333;
			text-shadow: 1px 1px #eee;
		}

		form {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin-top: 50px;
			margin-left: 570px;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0 0 5px rgba(0,0,0,0.2);
			border-radius: 5px;
			width: 400px;
		}

		label {
			font-weight: bold;
			margin-bottom: 5px;
			color: #666;
		}

		input[type="text"], input[type="number"], input[type="file"] {
			margin: 10px 0;
			padding: 10px;
			border-radius: 5px;
			border: 1px solid #ccc;
			width: 100%;
			background-color: #f9f9f9;
			color: #333;
			font-size: 16px;
		}

		input[type="file"] {
			padding: 5px;
			font-size: 14px;
			background-color: #fff;
		}

		input[type="submit"] {
			background-color: #4CAF50;
			color: #fff;
			padding: 10px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			width: 100%;
			margin-top: 20px;
			font-size: 16px;
			text-transform: uppercase;
			letter-spacing: 2px;
			transition: background-color 0.3s ease;
		}

		input[type="submit"]:hover {
			background-color: #3e8e41;
		}

		input[type="text"]:focus, input[type="number"]:focus, input[type="file"]:focus {
			outline: none;
			border-color: #4CAF50;
		}

nav ul li a:hover {
  color: white;
}
    nav .search {
      display: flex;
      align-items: center;
    }
    nav form {
      display: flex;
      align-items: center;
    }
    nav input[type="text"] {
      padding: 10px;
      border: none;
      border-radius: 5px;
      margin-right: 10px;
    }
    nav button[type="submit"] {
      padding: 10px 20px;
      background-color: #fff;
      color: #333;
      border: none;
      border-radius: 5px;
      font-weight: bold;
      cursor: pointer;
    }
    nav button[type="submit"]:hover {
      background-color: #333;
      color: #fff;
    }
  </style>
  
</head>
<body style="background-color:#eeffee">



<?php
$conn = mysqli_connect("localhost", "root", "", "productdb");



if (!$conn){
    die("Connection failed : " . mysqli_connect_error());
}




if(isset($_POST["submit"])){
  $name = $_POST["name"];
  $price=$_POST["price"];
  if($_FILES["image"]["error"] == 4){
    echo
    "<script> alert('Image Does Not Exist'); </script>"
    ;
  }
  else{

	if(!empty($_FILES["image"]["name"])) { 
        // Get file info 
        $fileName = basename($_FILES["image"]["name"]); 
        $fileType = pathinfo($fileName, PATHINFO_EXTENSION); 
         
        // Allow certain file formats 
        $allowTypes = array('jpg','png','jpeg','gif'); 
        if(in_array($fileType, $allowTypes)){ 
            $image = $_FILES['image']['tmp_name']; 
            $imgContent = addslashes(file_get_contents($image)); 
         
            // Insert image content into database 
            $query = "INSERT into products VALUES ('', '$name','$price','$imgContent')"; 

		
      		mysqli_query($conn, $query);
             
            // if($insert){ 
            //     $status = 'success'; 
            //     $statusMsg = "File uploaded successfully."; 
            // }else{ 
            //     $statusMsg = "File upload failed, please try again."; 
            // }  
        }else{ 
            $statusMsg = 'Sorry, only JPG, JPEG, PNG, & GIF files are allowed to upload.'; 
        } 
    }else{ 
        $statusMsg = 'Please select an image file to upload.'; 
    } 




    // $fileName = $_FILES["image"]["name"];
    // $fileSize = $_FILES["image"]["size"];
    // $tmpName = $_FILES["image"]["tmp_name"];

    // $validImageExtension = ['jpg', 'jpeg', 'png'];
    // $imageExtension = explode('.', $fileName);
    // $imageExtension = strtolower(end($imageExtension));
    // if ( !in_array($imageExtension, $validImageExtension) ){
    //   echo
    //   "
    //   <script>
    //     alert('Invalid Image Extension');
    //   </script>
    //   ";
    // }
    // else if($fileSize > 100000000000000000){
    //   echo
    //   "
    //   <script>
    //     alert('Image Size Is Too Large');
    //   </script>
    //   ";
    // }
    // else{
    //   $newImageName = uniqid();
    //   $newImageName .= '.' . $imageExtension;

    //   move_uploaded_file($tmpName, '.upload/' . $newImageName);
    //   $query = "INSERT INTO products VALUES('', '$name','$price', '$newImageName')";
    //   mysqli_query($conn, $query);
    //   echo
    //   "
    //   <script>
    //     alert('Successfully Added');
    //     document.location.href = 'index.php';
    //   </script>
    //   ";
    // }
  }
}
?>


  
<header>
    <div class="logo">
      <a href="#"><img src="upload/websell.png" alt="Logo"></a>
    </div>
    <nav>
      <ul>
 
		<li><a href="http://localhost:8888/login/mainpage.jsp">Home</a></li>
       
        <li><a href="http://localhost/shopping/index.php">Products</a></li>
        <li><a href="http://localhost/shopping/sell.php">Sell</a></li>
        <li><a href="http://localhost:8888/login/orders.jsp">Orders</a></li>
		<li><a href="http://localhost/shopping/rating.php">Rate Us</a></li>
        <li><a href="http://localhost:8888/login/profile.jsp">Profile</a></li> 
     
      </ul>
    </nav>
  </header>


  <h1>Upload Product</h1>
	<hr>
    <form class="" action="sell.php" method="post" autocomplete="off" enctype="multipart/form-data">
    
    <label for="name">Product Name:</label>
		<input type="text" id="name" name="name" required value=""><br>
    <label for="price">Price:</label>
		<input type="number" id="price" name="price" min="0" step="0.01" required>

		<label for="image">Select file:</label>
		<input type="file" id="image" name="image" accept=".jpg, .jpeg, .png" value="" required>
      <button type = "submit" name = "submit" >Submit</button>
    </form>








  </body>
  </html>




