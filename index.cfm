<cfsetting SHOWDEBUGOUTPUT="false">
<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Fine Uploader</title>
    
    <!--- using bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../FineUploader/lib/fine-uploader.js"></script>
    
    <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    
    <style>
      .container { margin-top: 70px; }
    </style>
  </head>
  <body>
    <div id="upload" class="container">
      <div id="uploadProgressBar" class="row">
        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2">
              <span class="btn btn-default" id="upload-btn">Select a File</span>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
              <div class="progress">
                <div id="progress-bar" class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
              <span id="error"></span>
            </div>
          </div>
        </div><!-- ./col -->
      </div><!-- ./row -->
    </div><!-- ./container -->
    <script src="../FineUploader/settings.js"></script>
  </body>
</html>
