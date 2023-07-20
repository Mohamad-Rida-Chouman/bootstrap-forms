<?php
include('connection.php');

// $username = $_POST['username'];
// $password = $_POST['password'];

$email = 'judai@gmail.com';
$pass = 'ads';

$query = $mysqli->prepare('select id,email,pass,firstname,lastname
from users 
where email=?');
$query->bind_param('s', $email);
$query->execute();

$query->store_result();
$query->bind_result($id, $email, $hashed_password, $first_name, $last_name);
$query->fetch();

$num_rows = $query->num_rows();
if ($num_rows == 0) {
    $response['status'] = "user not found";
} else {
    if (password_verify($pass, $hashed_password)) {
        $response['status'] = 'logged in';
        $response['user_id'] = $id;
        $response['first_name'] = $first_name;
        $response['email'] = $email;
    } else {
        $response['status'] = "wrong password";
    }
}
echo json_encode($response);
