<?php
//$files = array_filter($_FILES['upload']['name']); //something like that to be used before processing files.

// Count # of uploaded files in array
$total = count($_FILES['upload']['name']);

// Loop through each file
for ($i = 0; $i < $total; $i++) {

    //Get the temp file path
    $tmpFilePath = $_FILES['upload']['tmp_name'][$i];

    //Make sure we have a file path
    if ($tmpFilePath != "") {
        //Setup our new file path
        $newFilePath = "./file-uploaded/" . $_FILES['upload']['name'][$i];
        echo "Upload:" . ($i) . "success! ";

        //Upload the file into the temp dir
        if (move_uploaded_file($tmpFilePath, $newFilePath)) {

            //Handle other code here

        }
    }
}
