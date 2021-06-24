<?php
if (isset($_POST['upload'])) {
    if ($_POST['foldername'] != "") {
        $foldername = $_POST['foldername'];
        if (!is_dir($foldername)) mkdir($foldername);
        foreach ($_FILES['files']['name'] as $i => $name) {
            if (strlen($_FILES['files']['name'][$i]) > 1) {
                move_uploaded_file($_FILES['files']['tmp_name'][$i], $foldername . "/" . $name);
            }
        }
        echo "Folder is successfully uploaded";
    } else
        echo "Upload folder name is empty";
}
