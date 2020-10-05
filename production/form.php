<?php
$page = 'home';
include"head.php";
include"header.php"; 

if (isset($_POST['save'])) {
  $query = $mysqli->query("
    INSERT into truk
    (
      vendor_id,
      no_kendaraan
    )
    value
    (
      '$_POST[vendor_id]',
      '$_POST[no_kendaraan]'
    )
    ");
  $truk_id = mysqli_insert_id($mysqli);
  $query .= $mysqli->query("
    INSERT into truk_log 
    (
       truk_id, 
       nama_supir,
       pinjaman_uang_jalan,
       tgl_pinjaman_uang_jalan,
       spesial_case,
       lokasi,
       informasi,
       tanggal_masuk,
       tanggal_keluar
    )
    value
    (
      '$truk_id',
      '$_POST[nama_supir]',
      '$_POST[pinjaman_uang_jalan]',
      '$_POST[tgl_pinjaman_uang_jalan]',
      '$_POST[spesial_case]',
      '$_POST[lokasi]',
      '$_POST[informasi]',
      '$_POST[tanggal_masuk]',
      '$_POST[tanggal_keluar]'
      )");
  // if(mysqli_multi_query($mysqli,$query)){
  //   echo "Success";
  // }
  // else{
  //   echo "Error :". $query . mysql_error($mysqli);
  // }
  // echo '<script>document.location="form"</script>';

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

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="no-kendaraan">No. Kendaraan <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="No-Kendaraan" required="required" name="no_kendaraan" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nama-supir">Nama Supir
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="nama-supir" name="nama_supir" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="pinjaman-uang-jalan">Pinjaman Uang Jalan
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="pinjaman-uang-jalan" name="pinjaman_uang_jalan" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Uang Jalan</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 ">
                              <input type="date" class="form-control" name="tgl_pinjaman_uang_jalan">
                            </div>
                          </div>
                        </div>
                      </fieldset>
                      <br>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Vendor <span class="required">*</span></label>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Spesial Case Angkutan <span><small>(Mengangkat kayu tebangan lain)</small></span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="btn-group" data-toggle="buttons">
                            
                              <input type="radio" name="spesial_case" value="1" checked> Yes
                            
                              <input type="radio" name="spesial_case" value="0"> No
                            
                          </div>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Lokasi</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select class="form-control" name="lokasi">
                            <option>Choose option</option>
                            <option value="Jakarta">Jakarta</option>
                          </select>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Keterangan
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea class="form-control" rows="3" name="informasi"></textarea>
                        </div>
                      </div>

                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Masuk</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group">
                              <input type="date" class="form-control" name="tanggal_masuk">
                              
                            </div>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Keluar</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group">
                              <input type="date" class="form-control" name="tanggal_keluar">
                              
                            </div>
                          </div>
                        </div>
                      </fieldset>

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
