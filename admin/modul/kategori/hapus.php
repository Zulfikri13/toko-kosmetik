<?php
include "sesi_admin.php";
if(isset($_GET['id_kategori'])){
	include "../koneksi.php";
	$id=$_GET['id_kategori'];
	
		$sql1   = "DELETE FROM tb_kategori WHERE id_kategori= '$id'";
	
		
	$hapus1 = mysqli_query($koneksi,$sql1);
	if($hapus1){
//			echo 'Data Kelas Berhasil di Hapus ';
//			echo '<a href="index.php">Kembali</a>';
		header("Location: ?m=kategori&s=awal");
	}else{
		echo 'Data Kelas GAGAL di Hapus';
		echo '<a href="index.php">Kembali</a>';
	}
}
?>
