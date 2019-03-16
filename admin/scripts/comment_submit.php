<?php
    require_once('config.php');

    $comment = $_POST['comment'];
    $rating = $_POST['rating'];
    $movie = $_POST['movie'];

    $message = pushComment($comment, $rating, $movie);

    function pushComment($comment, $rating, $movie){
        include 'connect.php';

        $comment_query = 'INSERT INTO tbl_ratings( movies_id, rating_number, comment )';
        $comment_query .= ' VALUES(:movies_id,:rating_number,:comment)';

        $comment_set = $pdo->prepare($comment_query);
        $comment_set->execute(
            array(
                ':movies_id'=>$movie,
                ':rating_number'=>$rating,
                ':comment'=>$comment,
            )
        );

        if ($comment_set->rowCount()){
            $message = 'success';
        }else{
            $message="failed";
        }

        return $message;
    }

    echo json_encode($message);
?>