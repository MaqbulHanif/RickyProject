<?php
$page = 'home';
include"head.php";
include"header.php"; 

if (isset($_POST['save'])) {
  $fileName = $_FILES['bongkar_nota_filename']['name'];
  $tempName = $_FILES['bongkar_nota_filename']['tmp_name'];
  move_uploaded_file($tempName, "../src/uploads/nota/$fileName$fileName");
  
  $query = $mysqli->query("
  UPDATE truk_log
  SET
  supir_name = '$_POST[supir_name]',
  pinjaman_uang_jalan = '$_POST[pinjaman_uang_jalan]',
  tanggal_pinjaman_uang_jalan = '$_POST[tanggal_pinjaman_uang_jalan]',
  tanggal_keluar = '$_POST[tanggal_keluar]',
  information = '$_POST[information]'
  Where truk_id = '$_GET[truk_id]'
  ");

  $query = $mysqli->query("
    INSERT INTO truk_bongkar 
    (
    truk_log_id, 
    bongkar_date, 
    bongkar_nota, 
    bongkar_nota_filename, 
    bongkar_tonase, 
    bongkar_harga_tonase, 
    bongkar_hasil_perluasan, 
    bongkar_tebangan_name, 
    bongkar_status
    ) 
    VALUES 
    (
    '$_POST[truk_log_id]',
    '$_POST[bongkar_date]', 
    '$_POST[bongkar_nota]', 
    '$fileName', 
    '$_POST[bongkar_tonase]', 
    '$_POST[bongkar_harga_tonase]', 
    '$_POST[bongkar_hasil_perluasan]', 
    '$_POST[bongkar_tebangan_name]', 
    '$_POST[bongkar_status]'
    )
    ");

}

?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Truk Keluar-Masuk</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Form Design </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form action="" method="post" enctype="multipart/form-data" data-parsley-validate class="form-horizontal form-label-left">
                      <?php 
                      $query = $mysqli->query("SELECT * FROM truk_log tl INNER JOIN truk t on tl.truk_id = t.truk_id 
                            INNER JOIN vendor v on t.vendor_id = v.vendor_id
                            WHERE t.truk_id = '$_GET[truk_id]'");
                      while ($data=$query->fetch_array()) {
                    ?>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="no-kendaraan">No. Kendaraan <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="No-Kendaraan" required="required" value="<?php echo $data['truk_number'] ?>" name="no_kendaraan" class="form-control col-md-7 col-xs-12">
                          <input type="hidden" required="required" value="<?php echo $data['truk_log_id'] ?>" name="truk_log_id" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nama-supir">Nama Supir <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="nama-supir" required="required" value="<?php echo $data['supir_name'] ?>" name="supir_name" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <!-- <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Vendor / Pemilik Truk <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" value="<?php echo $data['vendor_name'] ?>" name="vendor_name" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div> -->

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="no-kendaraan">Pinjaman Uang Jalan <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="pinjaman-uang-jalan" required="required" value="<?php echo $data['pinjaman_uang_jalan'] ?>" name="pinjaman_uang_jalan" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Pinjam Uang Jalan </label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group has-feedback">
                              <input type="date" class="form-control" value="<?php echo $data['tanggal_pinjaman_uang_jalan']; ?>" name="tanggal_pinjaman_uang_jalan">
                          </div>
                        </div>
                      </fieldset>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Vendor <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="vendor" required="required" value="<?php echo $data['vendor_name'] ?>" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Keluar </label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group has-feedback">
                              <input type="date" class="form-control" value="<?php echo $data['tanggal_keluar'] ?>" name="tanggal_keluar">
                            </div>
                          </div>
                        </div>
                      </fieldset>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="no-kendaraan">Keterangan <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text"class="form-control" rows="3" value="<?php echo $data['information'] ?>" name="information"></input>
                        </div>
                      </div>
                    <?php } ?>

                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Bongkar </label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group has-feedback">
                              <input type="date" class="form-control" name="bongkar_date">
                            </div>
                          </div>
                        </div>
                      </fieldset>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tebangan Kayu Siapa <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="bongkar_tebangan_name" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Nomor Nota Timbang <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="bongkar_nota" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">upload <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" required="required" name="bongkar_nota_filename" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tonase <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="bongkar_tonase" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Status <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="bongkar_status" class="form-control" required>
                            <option value="all" selected>Semua</option>
                            <option value="Lunas">Lunas</option>
                            <option value="Tidak Lunas">Tidak Lunas</option>
                          </select>
                        </div>
                      </div>  

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Perluasan Angkutan :
                        </label>
                        <div class="col-md-3 col-md-3 col-md-12 has-feedback">
                          <input id="berat-tonase" class="form-control" placeholder="Berat Tonase" type="text">
                          <span>x</span>
                          <input id="harga-pertonase" name="bongkar_harga_tonase" class="form-control" placeholder="Harga Per Tonase" type="text">
                          <span>-</span>
                          <input id="PinjamanUangJalan" class="form-control" placeholder="Pinjaman Uang jalan/dll" type="text">
                          <span>=</span>
                          <input id="hasil" name="bongkar_hasil_perluasan" class="form-control" placeholder="Hasil" type="text">
                        </div>
                      </div>

                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="submit" name="save" class="btn btn-success">Submit</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        
        <!-- /footer content -->
      </div>
    </div>
    <script src="js/jquery-1.12.4.js"></script>
    <script>
       
        $("#berat-tonase").keyup(function(){
         total = $("#berat-tonase").val()* $("#harga-pertonase").val();
         $("#hasil").val(total);
         });
         
        $("#harga-pertonase").keyup(function(){
         total = $("#berat-tonase").val()* $("#harga-pertonase").val();
         $("#hasil").val(total);
         });
        $("#PinjamanUangJalan").keyup(function(){
         total = $("#hasil").val()- $("#PinjamanUangJalan").val();
         $("#hasil").val(total);
         });
    </script>
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="../vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="../vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="../vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="../vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="../vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
	
  </body>
</html>
