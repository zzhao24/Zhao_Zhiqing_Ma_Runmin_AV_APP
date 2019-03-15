<?php

	require_once('../admin/scripts/config.php');

	$tbl = 'tbl_user';
	$col = 'user_id';

	if(isset($_GET['user_id'])){

		$movid = $_GET['user_id'];

		$results = getCommentsUser($tbl, $col, $user);

		echo json_encode($results);

	} else {

		$results = getAll($tbl);

		echo json_encode($results);
	}
?>
