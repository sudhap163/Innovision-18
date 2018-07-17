
<?php

	include('../../../vendor/autoload.php');
    use \Firebase\JWT\JWT; 

    include('../config.php');
    include('../panels/cms/config.php');

    $secretKey = base64_decode(SECRET_KEY);

    $jwt = $_POST["token"];

    if (isset($jwt) && $jwt ) {

    	try {

    		$DecodedDataArray = JWT::decode(
    			$jwt,
    			$secretKey,
    			array(ALGORITHM)
    		);

    		$status = "success";
    		
    	} catch (Exception $e) {
    		
    		echo(json_encode(array('status' => 'failure', 'result' => $e)));
    	}

    } else {

    	echo(json_encode(array('status' => 'failure', 'result' => 'token missing'))); 
	}

?>