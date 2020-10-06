<?php
$page = 'home';
include"head.php";
include"header.php"; 

if (isset($_POST['save'])) {  
  $jenis = substr($_POST['no_kendaraan'], 0,  strpos($_POST['no_kendaraan'], '_'));
  $nokendaraan = substr($_POST['no_kendaraan'], strpos($_POST['no_kendaraan'], '_')+1,  strlen($_POST['no_kendaraan']));
  $tanggal = $_POST['tanggal_uang_jalan'];
  $keterangan= $_POST['keterangan'];
  $biaya = $_POST['biaya'];  
  
  $fileName = $_FILES['nota']['name'];
  $tempName = $_FILES['nota']['tmp_name'];
  move_uploaded_file($tempName, "../src/uploads/nota/$fileName");

  $query = "";

  if($jenis == 'truk'){
    $query = "
    INSERT INTO operasional 
    (
    truk_id, 
    tebangan_id, 
    operasional_date, 
    information, 
    biaya,
    operational_nota_filename    
    ) 
    VALUES 
    ( 
    '$nokendaraan', 
    '0',
    '$tanggal', 
    '$keterangan', 
    '$biaya', 
    '$fileName'         
    )";

  }else{
    $query = "
    INSERT INTO operasional 
    (
    truk_id, 
    tebangan_id, 
    operasional_date, 
    information, 
    biaya,
    operational_nota_filename    
    ) 
    VALUES 
    ( 
    '0', 
    '$nokendaraan',
    '$tanggal', 
    '$keterangan', 
    '$biaya', 
    '$fileName'        
    )";
  }
  
  $mysqli->query($query);
  $res = mysqli_insert_id($mysqli);
  


  }

?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Biaya Operasional</h3>
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
                    <form id="demo-form2" class="form-horizontal form-label-left" method="post" action=""  enctype="multipart/form-data">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="no-kendaraan">No. Kendaraan
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select class="form-control" name="no_kendaraan">                            
                            <?php
                              $query = $mysqli->query("SELECT * FROM truk");
                              while ($data = $query->fetch_array()) {
                            ?> 
                            <option value="truk_<?php echo $data['truk_id'] ?>"><?php echo $data['truk_number'];?>
                            <?php } ?>
                            <?php
                              $query = $mysqli->query("SELECT * FROM tebangan");
                              while ($data = $query->fetch_array()) {
                            ?> 
                            <option value="tebangan_<?php echo $data['tebangan_id'] ?>"><?php echo $data['tebangan_number'];?>
                          <?php } ?>
                          </select>
                        </div>
                      </div>

                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Bongkar</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group has-feedback">
                              <input type="date" class="form-control" name="tanggal_uang_jalan">
                            </div>
                          </div>
                        </div>
                      </fieldset>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >Upload Nota Timbangan<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" required="required" name="nota" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Keterangan
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea class="form-control" rows="3" name="keterangan"></textarea>
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="biaya">Biaya <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" id="biaya" name="biaya" required="required" class="form-control col-md-7 col-xs-12">
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
