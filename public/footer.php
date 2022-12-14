<div class="post-popup pst-pj">
			<div class="post-project">
				<h3>Post a project</h3>
				<div class="post-project-fields">
					<form>
						<div class="row">
							<div class="col-lg-12">
								<input type="text" name="title" placeholder="Title">
							</div>
							<div class="col-lg-12">
								<div class="inp-field">
									<select>
										<option>Category</option>
										<option>Category 1</option>
										<option>Category 2</option>
										<option>Category 3</option>
									</select>
								</div>
							</div>
							<div class="col-lg-12">
								<input type="text" name="skills" placeholder="Skills">
							</div>
							<div class="col-lg-12">
								<div class="price-sec">
									<div class="price-br">
										<input type="text" name="price1" placeholder="Price">
										<i class="la la-dollar"></i>
									</div>
									<span>To</span>
									<div class="price-br">
										<input type="text" name="price1" placeholder="Price">
										<i class="la la-dollar"></i>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<textarea name="description" placeholder="Description"></textarea>
							</div>
							<div class="col-lg-12">
								<ul>
									<li><button class="active" type="submit" value="post">Post</button></li>
									<li><a href="#" title="">Cancel</a></li>
								</ul>
							</div>
						</div>
					</form>
				</div><!--post-project-fields end-->				
			</div><!--post-project end-->
		</div><!--post-project-popup end-->

		<div class="post-popup job_post">
			<div class="post-project">
				<h3>Tulis Laporan</h3>
				<div class="post-project-fields">
					<form action="" method="post" enctype="multipart/form-data">
						<div class="row">
							<div class="col-lg-1">
								<input type="hidden" name="user" value="<?php echo $tampil["id_user"]; ?>">
							</div>
							<div class="col-lg-12">
								<input type="text" name="title" placeholder="Title">
							</div>																												
							<!-- <div class="col-lg-12">
							<label for="tujuan"></label>
								<select name="tujuan" id="tujuan">
								<option value="">Instansi Tujuan</option>
								<option value="rt">RT</option>
								<option value="rw">RW</option>
								<option value="kelurahan">Kelurahan</option>
								<option value="kecamatan">Kecamatan</option>
								<option value="desa">Kabupaten</option>
								<option value="kota">Kota</option>
								</select>
							</div>																												 -->
							<div class="col-lg-12">
								<textarea name="description" placeholder="Description"></textarea>
							</div>
							<div class="col-lg-12">
								<input type="file" name="gambar">
							</div>
							<div class="col-lg-12">
								<ul>
									<li><button  class="active" type="submit" name="post" value="Post">Post</button></li>
									<li><a href="index.php" title="">Cancel</a></li>
								</ul>
							</div>
						</div>
					</form>
					<?php 
					include "../config.php";
					$user 		  = @$_POST["user"];
					$judul 		  = @$_POST["title"];
					$deskripsi    = @$_POST["description"];
					$posting      = @$_POST["post"];

					$tz 		  = 'Asia/Jakarta';
					$dt 		  = new DateTime("now", new DateTimeZone($tz));
					$date 		  = $dt->format('Y-m-d G:i:s');
					
					$gambar 	  = @$_FILES['gambar']['name'];
					$asalgambar   = @$_FILES['gambar']['tmp_name'];

					$simpangambar = "foto/";

					if($posting) {
						move_uploaded_file($asalgambar, $simpangambar.$gambar);
						$data = $koneksi->query("INSERT INTO tb_pengaduan VALUES('', '$user', '$judul', '$deskripsi', '$gambar', '$date')");
						if($data) {
							echo "<script>location='index.php';</script>";
						}
					}
					?>
				</div><!--post-project-fields end-->				
			</div><!--post-project end-->
		</div><!--post-project-popup end-->
	</div><!--theme-layout end-->



<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/popper.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="lib/slick/slick.min.js"></script>
<script type="text/javascript" src="js/scrollbar.js"></script>
<script type="text/javascript" src="js/script.js"></script>

</body>
</html>

