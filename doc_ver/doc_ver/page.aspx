<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page.aspx.cs" Inherits="doc_ver.WebForm1" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard</title>

	<link rel="icon" href="../static/document.png" type="Image/icon">

  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" rel="stylesheet">
  
  <script src="https://code.jquery.com/jquery-1.6.2.min.js" integrity="sha256-0W0HoDU0BfzslffvxQomIbx0Jfml6IlQeDlvsNxGDE8=" crossorigin="anonymous" rel="stylesheet"></script>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
 


</head>

<body>
	



	<br>

	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="#">Home</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Verification</li>
	  </ol>
	</nav>
<br>

<center>
	<div class="container">
		
		<h2>
			Auto KYC Document Verification
		</h2>

		<p>
            Selected Pan Number: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>

	</div>

<br>

	<div class="container">
		<div class="jumbotron">
		
		<h2><p><strong> Aadhar Card </strong></p></h2>

			<form id="upload-file" method="post" enctype="multipart/form-data">
				<fieldset>
					<img src="../static/13.jpeg" class="img-rounded" alt="Cinque Terre" width="300" height="200" id="file"> 

				</fieldset>
				<fieldset>
					<button id="upload-file-btn" type="button">Verify</button>
				</fieldset>

			</form>
	      

	      <br><br>

			<div class="container">
				

				<div class="row">
					<div class="col-6 col-md-5"> <strong> Data from Image</strong></div>
					<div class="col-6 col-sm-2"> &nbsp;&nbsp;</div>
					<div class="col-6 col-md-5"> <strong> Data from DataBase</strong></div>
				</div>

			</div>




	    <br>
		

		<button type="button" class="btn btn-outline-danger">Not Verified</button>

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<button type="button" class="btn btn-outline-success">Verified</button>

		



	  </div>
	</div>

	<br />

	<div class="container">
		<div class="jumbotron">
		
		<h2><p><strong> Pan Card </strong></p></h2>
	      
	      <img src="../static/pan.png" class="img-rounded" alt="Cinque Terre" width="300" height="200"> 

	      <br><br>

			<div class="container">
				

				<div class="row">
					<div class="col-6 col-md-5"> <strong> Data from Image</strong></div>
					<div class="col-6 col-sm-2"> &nbsp;&nbsp;</div>
					<div class="col-6 col-md-5"> <strong> Data from DataBase</strong></div>
				</div>

			</div>




	    <br>
		

		<button type="button" class="btn btn-outline-danger">Not Verified</button>

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<button type="button" class="btn btn-outline-success">Verified</button>

		

	

	  </div>
	</div>





	<div class="container">

	<div class="progress">
	  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
	  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
		40% Complete (success)
	  </div>
	</div>

	<br />

	<button type="button" class="btn btn-outline-danger btn-lg btn-block">Submit</button>

	</div>

	<br><br>

</center>
</body>

	<script>
        $(function () {
            $('#upload-file-btn').click(function () {
                var form_data = new FormData($('#upload-file')[0]);
                $.ajax({
                    type: 'POST',
                    url: 'http://127.0.0.1:5000/uploadlabel',
                    data: form_data,
                    contentType: false,
                    cache: false,
                    processData: false,
                    success: function (data) {
                        console.log('Success!');
                    },
                });
            });
        });


	</script>

</html>