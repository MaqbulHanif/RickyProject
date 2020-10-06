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
  $q4 = '';
  $q5 = '';

  if($_POST['tebangan_number'] != 'all') $q1 = $_POST['tebangan_number']; else $q1 = '%';
  if($_POST['vendor_name'] != 'all') $q2 = $_POST['vendor_name']; else $q2 = '%';
  if($_POST['status'] != 'all') $q3 = $_POST['status']; else $q3 = '%';
  if($_POST['special_case'] != 'all') $q4 = $_POST['special_case']; else $q4 = '%';  
  
  $q1 = "tebangan_number LIKE '" . $q1 ."'";
  $q2 = "AND tebangan_id LIKE '" . $q2."'";
  $q3 = "AND tebangan_bongkar.bongkar_status LIKE '" . $q3."'";
  $q4 = "AND tebangan_bongkar.special_case LIKE '" . $q4."'";  

  $statement = "
  SELECT tebangan_bongkar.*, tebangan.*, vendor.vendor_name
  FROM tebangan_bongkar   
  JOIN tebangan ON tebangan.tebangan_id=tebangan_bongkar.tebangan_id
  JOIN vendor ON vendor.vendor_id=tebangan.vendor_id
  WHERE (tebangan_bongkar.bongkar_date BETWEEN '".$from."' AND '".$to."') ".$q3." ".$q4." AND tebangan_bongkar.tebangan_id in (SELECT tebangan_id FROM tebangan WHERE ".$q1." ".$q2."  )";   
      
  // echo $statement;
  $dataList = $mysqli->query($statement);  

}

?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Report Data Performance Tebangan setiap Subkontraktor Tiap Periode & Bulanan</h3>
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
                          <select name="tebangan_number" class="form-control" required>
                            <option value="all" selected>Semua</option>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Nama Subkon<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="vendor_name" class="form-control" required>
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
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Subkon <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="" class="form-control" required disabled>
                            <option value="subkon" selected>Subkon</option>                            
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Special Case <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="special_case" class="form-control" required>
                            <option value="0" selected>No</option>
                            <option value="1">Yes</option>                            
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Status <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="status" class="form-control" required>
                            <option value="Lunas" selected>Lunas</option>                            
                            <option value="Tidak Lunas">Tidak Lunas</option>
                          </select>
                        </div>
                      </div>
                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Bongkar Dari</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group">
                              <input type="date" class="form-control" name="tanggal_bongkar_dari" required>                              
                            </div>
                          </div>
                        </div>
                      </fieldset>
                      <fieldset>
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal Bongkar Sampai</label>
                        <div class="control-group">
                          <div class="controls">
                            <div class="col-md-6 xdisplay_inputx form-group">
                              <input type="date" class="form-control" name="tanggal_bongkar_sampai" required>                              
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
                  <?php if (isset($_POST['save'])) { 
                    $totalTonase = 0;
                    $totalPinjaman = 0; 
                    $totalPembayaran = 0;                   
                  ?>
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
                              <th>Nama Subkon Tebang</th>
                              <th>Tgl Bongkar</th>
                              <th>No. Kendaraan</th>
                              <th>Tebangan Kayu Siapa</th>
                              <th>Subkon</th>
                              <th>Status</th>
                              <th>Tonase</th>
                              <th>Total Pembayaran</th>
                              <th>Selisih</th>
                              <th>Keterangan</th>
                            </tr>
                          </thead>
                          <tbody>
                          <?php while ($row = $dataList->fetch_array()) {
                            $totalTonase += floatval($row['bongkar_tonase']);
                            $totalPembayaran += floatval($row['bongkar_hasil_perluasan']);
                            $totalPinjaman += floatval($row['pinjaman_uang_jalan']);
                            ?>
                            <tr>
                              <td><?= $x++; ?></td>
                              <td><?= $row['vendor_name'] ?></td>
                              <td><?= $row['bongkar_date'] ?></td>
                              <td><?= $row['tebangan_number'] ?></td>
                              <td><?= $row['bongkar_tebangan_name'] ?></td>                              
                              <td>Subkon</td>
                              <td><?= $row['bongkar_status'] ?></td>
                              <td><?= $row['bongkar_tonase'] ?></td>
                              <td><?= $row['bongkar_hasil_perluasan'] ?></td>                              
                              <td><?= (floatval($row['bongkar_hasil_perluasan']) - floatval($row['pinjaman_uang_jalan'])) ?></td>                              
                              <td><?= $row['information'] ?></td>              
                            </tr>  
                          <?php } ?>                      
                          </tbody>                        
                        </table>
                      </div>
                      <div class="x_content">
                        <h2>Total Ritase : <?= --$x ?></h2>
                        <h2>Total tonase : <?= $totalTonase ?></h2>
                        <h2>Pinjaman Uang : <?= $totalPinjaman?></h2>
                        <h2>Total Pembayaran : <?= $totalPembayaran ?></h2>
                        <h2>Total Selisih : <?= (floatval($totalPinjaman) - floatval($totalPembayaran)) ?></h2>
                        <div class="clearfix"></div>
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
