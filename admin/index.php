<?php

    require_once('../admin/scripts/config.php');

	if (isset($_GET['media'])) {
		$type = $_GET['media'];

		if ($type == "video") {
			$tbl = "tbl_movies";
			$col = 'movies_id';
			$tbl3 = 'tbl_mov_genre';
		} else if ($type == "audio"){
			$tbl = "tbl_audio";
			$col = 'audio_id';
			$tbl3 = 'tbl_aud_genre';
		}else{
			$tbl = "tbl_tvshows";
			$col = 'tv_id';
			$tbl3 = 'tbl_tv_genre';
		}
	}else{
		$tbl = "tbl_movies";
	}

    if(isset($_GET['filter'])){
	    $tbl2 = 'tbl_genre';
	    $col2 = 'genre_id';
	    $col3 = 'genre_name';
        $filter = $_GET['filter'];

        $results = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);

        echo json_encode($results);

    } else {

        $results = getAll($tbl);

        echo json_encode($results);
    }
?>
