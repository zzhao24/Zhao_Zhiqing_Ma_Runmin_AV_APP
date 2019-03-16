<?php
require_once('config.php');

$firstname = $_POST['firstname'];
$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];


$message = createNewUser($firstname, $username, $email, $password);

function createNewUser($firstname, $username, $email, $password){
    include 'connect.php';

    $user_query = 'INSERT INTO tbl_user( user_fname, user_name, user_pass, user_email )';

    $user_query .= ' VALUES(:user_fname,:user_name,:user_pass,:user_email)';

    $user_set = $pdo->prepare($user_query);
    $user_set->execute(
        array(
            ':user_fname'   =>  $firstname,
            ':user_name'    =>  $username,
            ':user_email'   =>  $email,
            ':user_pass'    =>  $password,
        )
    );

    if ($user_set->rowCount()){
        $message = 'success';
    }else{
        $message="failed";
    }

    return $message;
}

echo json_encode($message); ?>