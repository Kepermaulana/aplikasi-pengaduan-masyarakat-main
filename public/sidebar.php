        <div class="user-profile">
            <div class="username-dt">
                <div class="usr-pic">
                <?php 
                    if(@$_SESSION["user"]) {
                        if($tampil["foto"] != "" ) {
                        echo "<img src='foto/profil/" . $tampil["foto"] . "' width='100	' height='100'/>"; 
                        } else {
                            echo "<img src='../img/avatar1.png' width='100	' height='100'/>";
                        }
                    } 
                ?>	
                </div>
            </div><!--username-dt end-->
            <div class="user-specs">												
                <h3>
                    <?php 
                    if(@$_SESSION["user"]) {
                        echo $tampil["nama_user"]; 
                    } else if(@$_SESSION["admin"]) {
                        echo $tampil["nama_admin"]; 
                        }
                    ?>													
                </h3>
                <span>
                <?php 
                    if(@$_SESSION["user"]) {
                        echo $tampil["pekerjaan"]; 
                    } else if(@$_SESSION["admin"]) {														 
                        }
                    ?>
                </span>
            </div>
        </div><!--user-profile end-->
        <ul class="user-fw-status">            
            <li>
                <a href="../logout.php" title="">Logout</a>
            </li>
        </ul>