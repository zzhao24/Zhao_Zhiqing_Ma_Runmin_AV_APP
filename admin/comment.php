<?php

	require_once('../admin/scripts/config.php');

	$tbl = 'tbl_ratings';
	$tbl2 = 'tbl_user';
	$col = 'movies_id';

	if(isset($_GET['movies_id'])){

		$movid = $_GET['movies_id'];

		$results = getComments($tbl, $col, $movid);

		echo json_encode($results);

	} else {

		$results = getAll($tbl);

		echo json_encode($results);
	}
?>
