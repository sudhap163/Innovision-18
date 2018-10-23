<?php
    $name = $_POST['name'];
    $innoid = $_POST['inno_id'];
    $college = $_POST['college'];
    $output = '../../images/certificates/pk4.jpg';
    $image = imagecreatefromjpeg('../../images/certificates/original.jpg');
    $font_color = imagecolorallocate($image, 0, 0, 0);
    $text = imagettftext($image,15,0,80,180,$font_color,"../../fonts/Charmonman/Charmonman-Bold.ttf","Mr/Ms. Preetam Keshari Nahak");
    $text1 = imagettftext($image,15,0,80,200,$font_color,"../../fonts/Charmonman/Charmonman-Bold.ttf","NITR");

    imagejpeg($image,$output);
?>