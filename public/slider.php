    <div class="widget widget-jobs">
            <div class="sd-title">
                <h3>Pengguna Aplikasi</h3>
            </div>
        <div class="profiles-slider">
            <?php
            include "../config.php";
            $query = $koneksi->query("SELECT * FROM  tb_user");
            while($user=$query->fetch_array()) {
                if($user["kode"] != @$_SESSION["user"]["kode"]) {            
            ?>
            <div class="user-profy">
                <?php
                if ($user['foto'] != "") {
                    echo "<img src='foto/profil/".$user['foto']."' alt='' width='57' height='57'>";
                } else {
                    echo "<img src='../img/avatar1.png' alt='' width='57' height='57'>";
                }
                ?>               
                <h3><?php echo $user["nama_user"]; ?></h3>
                <span><?php echo $user["pekerjaan"]; ?></span>
                <ul>
                    <li><a href="#" title="" class="followw">Follow</a></li>
                    <li><a href="#" title="" class="envlp"><img src="images/envelop.png" alt="">Message</a></li>                  
                </ul>
                <a href="#" title="">View Profile</a>
            </div><!--user-profy end-->
            <?php }} ?>                                               
        </div><!--profiles-slider end-->
    </div><!--top-profiles end-->