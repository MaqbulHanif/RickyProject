<?php
$page = 'home';
include"head.php";
include"header.php";

if (isset($_POST['save'])) {
  $x = 1;  
  $q1 = '';
  $q2 = '';
  
  if($_POST['no_kendaraan'] != 'all') $q1 = $_POST['no_kendaraan']; else $q1 = '%';  
  if($_POST['no_kendaraan'] != 'all') $q2 = $_POST['no_kendaraan']; else $q2 = '%';  
  
  $q1 = "operasional.truk_id LIKE '" . $q1 ."'";
  $q2 = "operasional.tebangan_id LIKE '".$q2."'";

  $statement = "SELECT operasional.*, truk.* FROM operasional 
  JOIN truk ON truk.truk_id=operasional.truk_id   
  WHERE ".$q1." "; 
  
  $statement1 = "SELECT operasional.*, tebangan.* FROM operasional   
  JOIN tebangan ON tebangan.tebangan_id=operasional.tebangan_id
  WHERE ".$q2." ";     

  $dataList = $mysqli->query($statement);  
  $dataList1 = $mysqli->query($statement1);  

}

?>

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Report Biaya Operasional</h3>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">No Kendaraan <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <select name="no_kendaraan" class="form-control" required>
                            <option value="all" selected>Semua</option>
                              <?php
                                $query = $mysqli->query("SELECT truk.* FROM operasional JOIN truk ON truk.truk_id=operasional.truk_id");
                                while ($data = $query->fetch_array()) {
                              ?> 
                              <option value="<?php echo $data['truk_id'] ?>"><?php echo $data['truk_number'];?></option>
                            <?php } ?>                            
                            <?php
                                $query = $mysqli->query("SELECT tebangan.* FROM operasional JOIN tebangan ON tebangan.tebangan_id=operasional.tebangan_id");
                                while ($data = $query->fetch_array()) {
                              ?> 
                              <option value="<?php echo $data['tebangan_id'] ?>"><?php echo $data['tebangan_number'];?></option>
                            <?php } ?>
                          </select>
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
                            <th>No Kendaraan</th>
                            <th>Tgl Masuk</th>
                            <th>Keterangan</th>
                            <th>Biaya</th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php while ($row = $dataList->fetch_array()) {?>
                          <tr>
                            <td><?= $x++; ?></td>
                            <td><?= $row['truk_number'] ?></td>   
                            <td><?= $row['created_at'] ?></td>                                                     
                            <td><?= $row['information'] ?></td>
                            <td><?= $row['biaya'] ?></td>                             
                          </tr>  
                        <?php } ?>
                        <?php while ($row = $dataList1->fetch_array()) {?>
                          <tr>
                            <td><?= $x++; ?></td>
                            <td><?= $row['tebangan_number'] ?></td>                            
                            <td><?= $row['created_at'] ?></td>                            
                            <td><?= $row['information'] ?></td>
                            <td><?= $row['biaya'] ?></td>                             
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
