<?php

$target_path = "/mnt/d/uploads/";
$target_path = $target_path . basename( $_FILES['uploadedfile']['name']);
$destination_path = "/mnt/d/uploads/";

echo "<span style='font-family: courier;'>Source: " .        $_FILES['uploadedfile']['name'] . "</span><br /><hr>";
echo "<span style='font-family: courier;'>Destination: " .   $destination_path . "</span><br /><hr>";
echo "<span style='font-family: courier;'>Target path: " .   $target_path . "</span><br /><hr>";
echo "<span style='font-family: courier;'>Size: " .           $_FILES['uploadedfile']['size'] . "  Bytes</span><br /><hr>";

if (move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
	echo "*Note: <span style='font-family: courier;'>The file ". basename( $_FILES['uploadedfile']['name']). " has been uploaded!</span>";
	echo "<br><br><h1><mark>FILE HAS BEEN<br>UPLOADED SUCCESSFULY</mark></h1><br>";
} else {
	echo "*Note: <span style='font-family: courier;'>No file uploaded?</span>";
}

?>

<html>
<head>
	<title>File Upload</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
	* {
		font-family: courier;
		color: lime;
		font-weight: bold;
	}
	body {
		background-color: #222;
	}
	button, input {
		background-color: red;
		color: yellow;
		border: none;
		height: 4vh;
	}
	mark {
		color: black;
	}
	</style>
</head>
<body>
<hr>
<p>File Upload</p>
<form enctype="multipart/form-data" action="single-upload.php" method="post">
<p>
Select File:<br><br>
<input type="file" size="35" name="uploadedfile"/><br><br><br>
<input type="submit" name="Upload" value="CLICK HERE TO UPLOAD NOW"/>
</p>
</form>
<hr>
</body>
</html>