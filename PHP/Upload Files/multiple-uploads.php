<?php

// Set Upload Path
$target_dir = '/mnt/d/uploads/';

if( isset($_FILES['fileUpload']['name'])) {
      
  $total_files = count($_FILES['fileUpload']['name']);
  
  for($key = 0; $key < $total_files; $key++) {
    
    // Check if file is selected
    if(isset($_FILES['fileUpload']['name'][$key]) 
                      && $_FILES['fileUpload']['size'][$key] > 0) {
      
      $original_filename = $_FILES['fileUpload']['name'][$key];
      $target = $target_dir . basename($original_filename);
      $tmp  = $_FILES['fileUpload']['tmp_name'][$key];
      move_uploaded_file($tmp, $target);
    }
    
  }
     
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Multiple File Uploads</title>
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
  </style>
</head>
<body>
  <form action="multiple-uploads.php" method="post" enctype="multipart/form-data">
  <p>Multiple File Uploads</p><hr>
    <label>Select Files: </label><br>
    <input type="file" name="fileUpload[]" multiple ><br><hr>
    <input type="submit" name="Submit" value="Upload" >
  </form>
</body>
</html>
