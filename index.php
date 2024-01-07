<?php 
error_reporting(0);
session_start();
include "koneksi.php";
include "fungsi_kalender.php";
?>
<html>
<head>
	<title>Selamat datang di E-Learning SMK N 2 Padang</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
		function myFunction() {
		    $(".sembunyikan").hide();
		}
	</script>
	<script>
		$(document).ready(function(){
			$(".tombol").click(function(){
				$("#hide").toggle(1000);
			});
		});

		$(document).ready(function(){
			$(".tombol1").click(function(){
				$("#hide1").toggle(1000);
			});
		});
	</script>
	
</head>
<body onload="myFunction()">
<div id='container'>
	<div id='header'>
		<img class='header' width='1080px' src='images/header.jpg'>
		<ul id='menu'>
			<?php if ($_SESSION[level]=='admin'){ ?>
				<li><a href='index.php?page=edit&id=1'>Beranda </a></li>
				<li><a href='index.php?page=edit&id=2'>Kelola Profile</a></li>
				<li><a href='index.php?page=kelolasiswa'>Kelola Siswa</a></li>
				<li><a href='index.php?page=kelolaguru'>Kelola Guru</a></li>
				<li><a href='logout.php'>Logout</a></li>
				
			<?php }elseif ($_SESSION[level]=='siswa'){ ?>
				<li><a href='index.php?page=home'>Home </a></li>
				<li><a href='index.php?page=profile'>Profile</a></li>
				<li><a href='index.php?page=materiajar'>Materi Ajar</a></li>
				<li><a href='index.php?page=tugas'>Tugas</a></li>
				<li><a href='index.php?page=laporannilaisiswa'>Laporan Nilai</a></li>
				<li><a href='logout.php'>Logout</a></li>

			<?php }elseif ($_SESSION[level]=='guru'){ ?>
				<li><a href='index.php?page=home'>Home </a></li>
				<li><a href='index.php?page=profile'>Profile</a></li>
				<li><a href='index.php?page=materiajarguru'>Upload Materi</a></li>
				<li><a href='index.php?page=kirimtugas'>Kirim Tugas</a></li>
				<li><a href='index.php?page=laporannilai'>Laporan Nilai</a></li>
				<li><a href='logout.php'>Logout</a></li>

			<?php }else{ ?>
				<li><a href='index.php?page=home'>Home </a></li>
				<li><a href='index.php?page=profile'>Profile</a></li>
				<li><a href='index.php?page=infopendaftaran'>Info Pendaftaran</a></li>
				<li><a href='index.php?page=pendaftaran'>Pendaftaran</a></li>
				<li><a href='index.php?page=login'>Login</a></li>
			<?php } ?>
		</ul>
	</div>

	<div id='contentt'>
		<?php 
			include "content.php";
			include "content-admin.php";
		?>
	</div>

	<br><div id='sidebar'>
		<div class='sidebar'>
			<?php include "sidebar-left.php"; ?> 
		</div>
	</div>
	<div style='clear:both'></div><br>
	<div id='footer'>
	<center style='margin-top:10px'>Copyright 2015 (c) - E-Learning SMK N 2 Padang</center>
	</div>
</div>
</body>
</html>