<?php
    require_once('config.php');

    $comment = $_POST['comment'];
    $rating = $_POST['rating'];
    $movie = $_POST['movie'];
    $type = $_POST['type'];

    if ($type == 'video'){
        $tbl = 'tbl_movie_ratings';
        $col = 'movies_id';
    }elseif ($type == 'audio'){
        $tbl = 'tbl_audio_ratings';
        $col = 'audio_id';
    }elseif($type == 'television'){
        $tbl = 'tbl_tvshow_ratings';
        $col = 'tvshows_id';
    }else{
        $tbl = 'tbl_ratings';
        $col = 'movies_id';
    }

    $message = pushComment($comment, $rating, $movie, $tbl, $col);

    function pushComment($comment, $rating, $movie, $tbl, $col){
        include 'connect.php';

        $comment_query = 'INSERT INTO '.$tbl.'( '.$col.', rating_number, comment )';
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