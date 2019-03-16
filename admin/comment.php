<?php

	require_once('../admin/scripts/config.php');


if (isset($_GET['media'])) {

	$type = $_GET['media'];

	if ($type == "video") {
		$tbl = "tbl_movie_ratings";
		$col = 'movies_id';
	} else if ($type == "audio"){
		$tbl = "tbl_audio_ratings";
		$col = 'audio_id';
	} else if ($type == "television"){
		$tbl = "tbl_tvshow_ratings";
		$col = 'tvshows_id';
	}
}else{
	$tbl = "tbl_movie_ratings";
	$col = 'movies_id';
}

if(isset($_GET['movies_id'])){

	$movid = $_GET['movies_id'];

	$results = getComments($tbl, $col, $movid);

	echo json_encode($results);

} else {

	$results = getAll($tbl);

	echo json_encode($results);
}
?>
