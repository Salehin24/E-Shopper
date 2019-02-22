<?php
    if(isset($_POST['btn'])) {
       echo '<pre>';
    print_r($_POST);
    print_r($_FILES);
    
//    echo '<br/>';
//    echo $_FILES['image']['name'];
    
    $directory='assets/admin_assets/images/';
    $target_file=$directory.$_FILES['image']['name'];
    $file_type=pathinfo($target_file, PATHINFO_EXTENSION);
    //echo $file_type;
    $file_size=$_FILES['image']['size'];
    //echo $file_size;
    $image=getimagesize($_FILES['image']['tmp_name']);
//    echo '<pre>';
//    print_r($image);
    if($image) {
        if(file_exists($target_file)) {
            echo 'This image already exists';
            exit();
        } else {
            if($file_size>5242880) {
                echo 'File size is too large. Please select a file within 5MB';
                exit();
            } else {
                if($file_type != 'jpg' && $file_type != 'png') {
                    die('File type is not valid');
                } else {
                    move_uploaded_file($_FILES['image']['tmp_name'], $target_file);
                }
                
            }
            
        }
    }  else {
        echo 'This is not a image';
        exit();
    } 
        
    }
    
    
    
    
    
?>

<form action="" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <td>Image Name</td>
            <td><input type="text" name="image_name"></td>
        </tr>
        <tr>
            <td>Image</td>
            <td><input type="file" name="image"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" name="btn" value="Save ME"></td>
        </tr>
    </table>
</form>