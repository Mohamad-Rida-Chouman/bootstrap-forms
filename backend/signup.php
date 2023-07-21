<?php
include('connection.php');

$email = $_POST['email'];
$pass = $_POST['pass'];
$firstname = $_POST['name'];
$lastname = $_POST['surname'];

// $firstname = 'judai';
// $lastname = 'yuki';
// $email = 'lbrckmvbkai@gmail.com';
// $pass = 'asd';


$check_email = $mysqli->prepare('select email from users where email=?');
$check_email->bind_param('s', $email);
$check_email->execute();
$check_email->store_result();
$email_exists = $check_email->num_rows();

if ($email_exists == 0) {
    // $hashed_password = password_hash($pass, PASSWORD_BCRYPT);
    $hashed_password = $pass;
    $query = $mysqli->prepare('insert into users(firstname,lastname,email,pass) values(?,?,?,?)');
    $query->bind_param('ssss',$firstname, $lastname, $email, $hashed_password);
    $query->execute();

    $response['status'] = "success";
} else {
    $response['status'] = "failed";
}

echo json_encode($response);
