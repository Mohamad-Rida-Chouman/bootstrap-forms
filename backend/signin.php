<?php
include('connection.php');

$email = $_POST['email'];
$pass = $_POST['pass'];

$query = $mysqli->prepare('select id,firstname,lastname,email,pass
from users 
where email=?');
$query->bind_param('s', $email);
$query->execute();

$query->store_result();
$query->bind_result($id, $firstname, $lastname, $email, $hashed_password);
$query->fetch();

$num_rows = $query->num_rows();
if ($num_rows == 0) {
    $response['status'] = "user not found";
} else {
    // if (password_verify($pass, $hashed_password)) {
    if ($pass == $hashed_password){
        $response['status'] = 'logged in';
        $response['user_id'] = $id;
        $response['first_name'] = $firstname;
        $response['email'] = $email;
    } else {
        $response['status'] = "wrong password";
    }
}
$response =$firstname;
header('Content-Type: application/json');
echo $response;