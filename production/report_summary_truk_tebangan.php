<?php
$page = 'home';
include"head.php";
include"header.php"; 

if (isset($_POST['save'])) {
  $x = 1;
  $from = $_POST['tanggal_bongkar_dari'];
  $to = $_POST['tanggal_bongkar_sampai'];
  $q1 = '';
  $q2 = '';
  $q3 = '';  
  $q5 = '';

  if($_POST['no_kendaraan'] != 'all') $q1 = $_POST['no_kendaraan']; else $q1 = '%';
  if($_POST['vendor_name'] != 'all') $q2 = $_POST['vendor_name']; else $q2 = '%';
  if($_POST['status'] != 'all') $q3 = $_POST['status']; else $q3 = '%';  
  if($_POST['nota_number'] != 'all') $q5 = $_POST['nota_number']; else $q5 = '%';
  
  $q1 = "truk_number LIKE '" . $q1 ."'";
  $q2 = "AND vendor_id LIKE '" . $q2."'";
  $q3 = "AND truk_bongkar.bongkar_status LIKE '" . $q3."'";  
  $q5 = "AND bongkar_nota LIKE '" . $q5."'";

  $statement = "
  SELECT truk_bongkar.*, truk.truk_number, vendor.vendor_name, 
  truk_log.pinjaman_uang_jalan, truk_log.location, truk_log.information, truk_log.special_case
  FROM truk_bongkar 
  JOIN truk_log ON truk_log.truk_log_id=truk_bongkar.truk_log_id
  JOIN truk ON truk.truk_id=truk_log.truk_id
  JOIN vendor ON vendor.vendor_id=truk.vendor_id
  WHERE (truk_bongkar.bongkar_date BETWEEN '".$from."' AND '".$to."') ".$q3." ".$q5." AND truk_bongkar.truk_log_id in (SELECT truk_log_id FROM truk_log WHERE truk_id in (SELECT truk_id FROM truk WHERE ".$q1." ".$q2." ))";   
    

  $dataList = $mysqli->query($statement);   
  $q1 = '';
  $q2 = '';
  $q3 = '';  
  $q5 = '';
  

  if($_POST['no_kendaraan'] != 'all') $q1 = $_POST['no_kendaraan']; else $q1 = '%';
  if($_POST['vendor_name'] != 'all') $q2 = $_POST['vendor_name']; else $q2 = '%';
  if($_POST['status'] != 'all') $q3 = $_POST['status']; else $q3 = '%';  
  if($_POST['nota_number'] != 'all') $q5 = $_POST['nota_number']; else $q5 = '%';

  $q1 = "tebangan_number LIKE '" . $q1 ."'";  
  $q2 = "AND vendor_id LIKE '" . $q2."'";
  $q3 = "AND tebangan_bongkar.bongkar_status LIKE '" . $q3."'";    
  
  $statement = "
  SELECT tebangan_bongkar.*, tebangan.tebangan_number, vendor.vendor_name
  FROM tebangan_bongkar   
  JOIN tebangan ON tebangan.tebangan_id=tebangan_bongkar.tebangan_id
  JOIN vendor ON vendor.vendor_id=tebangan.vendor_id
  WHERE (tebangan_bongkar.bongkar_date BETWEEN '".$from."' AND '".$to."') ".$q3." AND tebangan_bongkar.tebangan_id in (SELECT tebangan_id FROM tebangan WHERE ".$q1." ".$q2." )";   
  echo $statement;
  $dataList1 = $mysqli->query($statement);  

}

?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Summary Report Truk & Tebangan</h3>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">No. Kendaraan <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="no_kendaraan" class="form-control">
                          <option value="all" selected>Semua</option>
                              <?php
                                $query = $mysqli->query("SELECT * FROM truk ");
                                while ($data = $query->fetch_array()) {
                              ?> 
                              <option value="<?php echo $data['truk_number'] ?>"><?php echo $data['truk_number'];?></option>
                            <?php } ?>                            
                            <?php
                                $query = $mysqli->query("SELECT * FROM tebangan");
                                while ($data = $query->fetch_array()) {
                              ?> 
                              <option value="<?php echo $data['tebangan_number'] ?>"><?php echo $data['tebangan_number'];?></option>
                            <?php } ?>
                          </select>
                        </div>
                      </div> 
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Vendor/Subkon <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="" class="form-control" disabled>
                            <option value="all" selected>Semua</option>                              
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">No. Nota <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="nota_number" class="form-control">
                            <option value="all" selected>Semua</option>                                                      
                            <?php
                                $query = $mysqli->query("SELECT * FROM truk_bongkar");
                                while ($data = $query->fetch_array()) {
                              ?> 
                              <option value="<?php echo $data['bongkar_nota'] ?>"><?php echo $data['bongkar_nota'];?></option>
                            <?php } ?>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Status Bayar <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="status" class="form-control">
                            <option value="all" selected>Semua</option>
                            <option value="Lunas">Lunas</option>
                            <option value="tidak_lunas">Tidak Lunas</option>
                          </select>
                        </div>
                      </div>                                            
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Nama Vendor/Pemilik Truk<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        <select name="vendor_name" class="form-control">
                            <option value="all" selected>Semua</option>
                              <?php
                                $query = $mysqli->query("SELECT * FROM vendor");
                                while ($data = $query->fetch_array()) {
                              ?> 
                              <option value="<?php echo $data['vendor_id'] ?>"><?php echo $data['vendor_name'];?></option>
                            <?php } ?> 
                          </select>
                        </div>
                      </div>   
                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Bongkar Dari</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group">
                              <input type="date" class="form-control" name="tanggal_bongkar_dari">                              
                            </div>
                          </div>
                        </div>
                      </fieldset>
                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Bongkar Sampai</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group">
                              <input type="date" class="form-control" name="tanggal_bongkar_sampai">                              
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
                <?php if (isset($_POST['save'])) { ?>
                  <div class="x_panel">
                    <div class="x_title">
                      <h2>Hasil</h2>                      
                      <div class="clearfix"></div>
                    </div>                    
                    <div class="x_content">                      
                      <table id="datatable-fixed-header" class="table table-striped table-bordered ">
                      <thead>
                          <tr>
                            <th>No</th>
                            <th>Tgl Masuk</th>
                            <th>Tgl Bongkar</th>
                            <th>No. Nota</th>
                            <th>Nama Vendor</th>
                            <th>No. Kendaraan</th>                                                        
                            <th>Status Bayar</th>
                            <th>Tonase</th>
                            <th>Total Pembayaran</th>
                            <th>Pinjaman Uang</th>
                            <th>Selisih</th>
                            <th>Lokasi</th>
                            <th>Keterangan</th>
                            <th>Spesial Case</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php while ($row = $dataList->fetch_array()) {                          
                          ?>
                          <tr>
                            <td><?= $x++; ?></td>
                            <td><?= $row['created_at'] ?></td>
                            <td><?= $row['bongkar_date'] ?></td>
                            <td><?= $row['bongkar_nota'] ?></td>
                            <td><?= $row['vendor_name'] ?></td>
                            <td><?= $row['truk_number'] ?></td>
                            <td><?= $row['bongkar_status'] ?></td>
                            <td><?= $row['bongkar_tonase'] ?></td>
                            <td><?= $row['bongkar_hasil_perluasan'] ?></td>
                            <td><?= $row['pinjaman_uang_jalan'] ?></td>
                            <td><?= (floatval($row['bongkar_hasil_perluasan']) - floatval($row['pinjaman_uang_jalan'])) ?></td>
                            <td><?= $row['location'] ?></td>    
                            <td><?= $row['information'] ?></td>              
                            <td><?= $row['special_case'] ?></td>    
                          </tr>  
                        <?php } ?>                      
                        <?php while ($row = $dataList1->fetch_array()) {                          
                          ?>
                          <tr>
                            <td><?= $x++; ?></td>
                            <td><?= $row['created_at'] ?></td>
                            <td><?= $row['bongkar_date'] ?></td>
                            <td>-</td>
                            <td><?= $row['vendor_name'] ?></td>
                            <td><?= $row['tebangan_number'] ?></td>
                            <td><?= $row['bongkar_status'] ?></td>
                            <td><?= $row['bongkar_tonase'] ?></td>
                            <td><?= $row['bongkar_hasil_perluasan'] ?></td>
                            <td><?= $row['pinjaman_uang_jalan'] ?></td>
                            <td><?= (floatval($row['bongkar_hasil_perluasan']) - floatval($row['pinjaman_uang_jalan'])) ?></td>
                            <td>-</td>    
                            <td><?= $row['information'] ?></td>              
                            <td><?= $row['special_case'] ?></td>    
                          </tr>  
                        <?php } ?> 
                        </tbody>                        
                      </table>
                    </div>                    
                  </div>                  
                <?php } ?> 
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
    
    <!-- Datatables -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
    <script>
      $(document).ready(function() {
    // Setup - add a text input to each footer cell
    $('#datatable-fixed-header tfoot th').each( function () {
        var title = $(this).text();
        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
    } );
 
    // DataTable
    var table = $('#datatable-fixed-header').DataTable({
        initComplete: function () {
            // Apply the search
            this.api().columns().every( function () {
                var that = this;
 
                $( 'input', this.footer() ).on( 'keyup change clear', function () {
                    if ( that.search() !== this.value ) {
                        that
                            .search( this.value )
                            .draw();
                    }
                } );
            } );
        }
    });
 
} );
    </script>
  </body>
</html>
