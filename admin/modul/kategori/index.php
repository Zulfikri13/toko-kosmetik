<?php 
include 'sesi_admin.php';
$modul = (isset($_GET['s']))?$_GET['s']:"awal";
switch($modul){
	case 'awal': default: include "modul/kategori/title.php"; break;
	case 'simpan': include "modul/kategori/simpan.php"; break;
	case 'hapus': include "modul/kategori/hapus.php"; break;
	case 'ubah': include "modul/kategori/ubah.php"; break;
	case 'update': include "modul/kategori/update.php"; break;
	
}
 ?>