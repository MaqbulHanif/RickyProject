<?php
$page = 'home';
include"head.php";
include"header.php"; 

if (isset($_POST['save'])) {
  $fileName = $_FILES['bongkar_nota_filename']['name'];
  $tempName = $_FILES['bongkar_nota_filename']['tmp_name'];
  move_uploaded_file($tempName, "nota/$fileName");

  $query = $mysqli->query("
    INSERT into tebangan
    (
      vendor_id,
      tebangan_number
    )
    value
    (
      '$_POST[vendor_id]',
      '$_POST[tebangan_number]'
    )
    ");

  $tebangan_id = mysqli_insert_id($mysqli);
  $query = $mysqli->query("
    INSERT INTO tebangan_bongkar 
    (
    tebangan_id, 
    bongkar_date, 
    bongkar_tonase, 
    bongkar_nota_filename, 
    bongkar_harga_tonase, 
    pinjaman_uang_jalan, 
    bongkar_hasil_perluasan, 
    bongkar_tebangan_name, 
    bongkar_status, 
    information, 
    special_case
    ) 
    VALUES 
    ( 
    '$tebangan_id', 
    '$_POST[bongkar_date]',
    '$_POST[bongkar_tonase]', 
    '$fileName', 
    '$_POST[bongkar_harga_tonase]', 
    '$_POST[pinjaman_uang_jalan]', 
    '$_POST[bongkar_hasil_perluasan]', 
    '$_POST[bongkar_tebangan_name]', 
    '$_POST[bongkar_status]', 
    '$_POST[information]', 
    '$_POST[special_case]'
    )
    ");

}

?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Tebangan</h3>
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

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">No. Kendaraan <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="tebangan_number" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Nama Subkontraktor Tebangan <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="vendor_id" class="form-control">
                            <option>Choose option</option>
                            <?php
                              $query = $mysqli->query("SELECT * FROM vendor");
                              while ($data = $query->fetch_array()) {
                            ?> 
                            <option value="<?php echo $data['vendor_id'] ?>"><?php echo $data['vendor_name'];?></option>
                          <?php } ?>
                          </select>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Upload Nota Timbangan<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" required="required" name="bongkar_nota_filename" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Bongkar</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group has-feedback">
                              <input type="date" class="form-control" name="bongkar_date">
                            </div>
                          </div>
                        </div>
                      </fieldset>

                      <div class="form-group">
                        <label for="tebangan_kayu_siapa" class="control-label col-md-3 col-sm-3 col-xs-12">Tebangan Kayu Siapa <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="tebangan_kayu_siapa" name="bongkar_tebangan_name" class="form-control col-md-7 col-xs-12" type="text">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="sukbon" class="control-label col-md-3 col-sm-3 col-xs-12">Sukbon <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="sukbon" class="form-control col-md-7 col-xs-12" type="text">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Status <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="bongkar_status" class="form-control" required>
                            <option value="all" selected>Semua</option>
                            <option value="Lunas">Lunas</option>
                            <option value="tidak_lunas">Tidak Lunas</option>
                          </select>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Spesial Case Angkutan <span><small>(Mengangkat kayu tebangan lain)</small></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="btn-group" data-toggle="buttons">
                            
                              <input type="radio" name="special_case" value="Yes" > Yes
                            
                              <input type="radio" name="special_case" value="No" checked> No
                            
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Keterangan Tambahan
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea class="form-control" rows="3" name="information"></textarea>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Perluasan Angkutan :
                        </label>
                        <div class="col-md-3 col-md-3 col-md-12 has-feedback">
                          <input id="berat-tonase" name="bongkar_tonase" class="form-control" placeholder="Berat Tonase" type="text">
                          <span>x</span>
                          <input id="harga-pertonase" name="bongkar_harga_tonase" class="form-control" placeholder="Harga Per Tonase" type="text">
                          <span>-</span>
                          <input id="PinjamanUangJalan" name="pinjaman_uang_jalan" class="form-control" placeholder="Pinjaman Uang jalan/dll" type="text">
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
