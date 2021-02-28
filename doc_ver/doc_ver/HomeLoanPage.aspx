<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeLoanPage.aspx.cs" Inherits="doc_ver.WebForm1" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard</title>

	<link rel="icon" href="../static/document.png" type="Image/icon">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" rel="stylesheet">
  
  <script src="https://code.jquery.com/jquery-1.6.2.min.js" integrity="sha256-0W0HoDU0BfzslffvxQomIbx0Jfml6IlQeDlvsNxGDE8=" crossorigin="anonymous" rel="stylesheet"></script>

  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

  <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	 
	<link
	 href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	 rel="stylesheet" type="text/css" /> 
	<script
	 src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"
	 type="text/javascript"></script>
	<script
	 src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	 type="text/javascript"></script>


</head>

<body>
	



	<br>

	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="#">Home</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Home Loan Documents Verification</li>
	  </ol>
	</nav>
<br>

<center>
	<div class="container">

		<p>
            Selected Pan Number: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <asp:Label ID="OverallStatus" runat="server"></asp:Label>
        </p>

	</div>

<br>

	<form id="form2" runat="server"> 
					<div class="container">
 
            
					<table class="table table-hover">
							
						<tbody>
							<tr>
								<td>
									<div class="form-group">                          
										<div class="col-xs-6">
											<label><h5> Applicant Name</h5></label>
											<asp:TextBox ID="name" runat="server" type="text" class="form-control"></asp:TextBox>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<td>
									<div class="form-group">                          
										<div class="col-xs-6">
											<label><h5> Father/Spous Name </h5></label> 
											<asp:TextBox ID="fatherName" runat="server" type="text" class="form-control"></asp:TextBox>
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<td>
									<div class="form-group">                          
										<div class="col-xs-6">
											<label><h5> Mother Name </h5></label>  
											<asp:TextBox ID="motherName" runat="server" type="text" class="form-control"></asp:TextBox>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<table class="table table-hover">
							
						<tbody>
							<tr>
								<td>
									<label><h5> Date of Birth</h5></label> 
									<asp:TextBox ID="dob" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> Gender</h5></label> 
									<asp:TextBox ID="gender" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> Marital Status </h5></label> 
									<asp:TextBox ID="shadi" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>
							</tr>

							<tr>
								<td>
									<label><h5> Citizenship</h5></label> 
									<asp:TextBox ID="citizenship" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> Resident</h5></label> 
									<asp:TextBox ID="resident" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> Occupation Type </h5></label> 
									<asp:TextBox ID="occupation" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>
							</tr>
      
						</tbody>
					</table>

					<table class="table table-hover">							
						<tbody>
							<tr>
								<td>
									<label><h5> Mobile No. </h5></label> 
									<asp:TextBox ID="Number" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>
							
								<td>
									<label><h5> Email ID </h5></label> 
									<asp:TextBox ID="email" runat="server" type="email" class="form-control"></asp:TextBox>
								</td>

								<td>
									<label><h5> PAN NUMBER </h5></label> 
									<asp:TextBox ID="PanNo" runat="server" type="text" class="form-control"></asp:TextBox>
								</td>
							</tr>
						</tbody>
					</table>

					<table class="table table-hover">							
						<tbody>
							<tr>
								<td>
									<label><h5> Photo </h5> <br /> <asp:TextBox ID="PhotoStatusLabel" runat="server"></asp:TextBox></label>
										<asp:Image ID="Photo" runat="server" class="img-rounded" data-toggle="modal" data-target="#PhotoModal" alt="Cinque Terre" Width="300" />
										
											<div class="modal fade" id="PhotoModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="Photo_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>	

											<br>

											<div class="col-lg">											
												<table>	
												<TR>
													<TD>	
													<div class="dropdown">

														<select id="PhotoDropdown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>

													<asp:TextBox ID="PhotoNotVerified" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="PhotoVerified" class="btn btn-outline-success" runat="server" Text="Verified"></asp:Button>									
														</TD>													
													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#PhotoVerified').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#PhotoStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#PhotoNotVerified').keyup(function () {
                                                                $('#PhotoStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#PhotoDropdown').change(function () {
                                                            var qty = $('#PhotoDropdown').val();
                                                            $("#PhotoStatusLabel").val(qty);
                                                        });
													</script>
													</table>
											</div>										
								</td>
							
								<td>
									<br />
									<br />
									<br />
									<br />
									<label><h5> Signature </h5> <br /> <asp:TextBox ID="SignStatusLabel" runat="server"></asp:TextBox></label>


										<asp:Image ID="Sign" runat="server" class="img-rounded" data-toggle="modal" data-target="#SignModal" alt="Cinque Terre" Width="300" />
										
											 <div class="modal fade" id="SignModal">
												<div class="modal-dialog modal-lg">
													<center>
														<br /> <br />
														<asp:Image ID="Sign_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="300" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>	

									<br />
									<br />
											<br>

											<div class="col-lg">											
												<table>	
												<TR>
													<TD>
													<div class="dropdown">

														<select id="SignDropDown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>

													<asp:TextBox ID="SignNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="SignVerify" class="btn btn-outline-success" runat="server" Text="Verified"></asp:Button>									
														</TD>													

													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#SignVerify').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#SignStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#SignNotVerify').keyup(function () {
                                                                $('#SignStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#SignDropDown').change(function () {
                                                            var qty = $('#SignDropDown').val();
                                                            $("#SignStatusLabel").val(qty);
                                                        });
													</script>

													</table>
											</div>							
								</td>
							</tr>
						</tbody>
					</table>
	
					</div>
											   			
						
						<div class="container">
  							
                            <h3 style="text-align:center">Client Documents</h3>

							<table class="table table-hover">
    							<thead>
      								<tr>
        								<th>KYC Documents Verified <img src="../static/gtick.jpg " width="40"> </th>
        								
										          							
      								</tr>
    							</thead>
    						</table>
  							






							<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								INCOME DOCUMENTS
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>
					      			<tr>
							        	<td> 
											<br><br><br><br>
											<label> Income Details </label> 
											<br />
											<strong>
											<asp:Label ID="IncomeDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="IncomeDocStatusLabel" Text="Status" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="IncomeDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#IncomeDocModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="IncomeDocModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="IncomeDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>
													<div class="dropdown">

														<select id="IncomeDropDown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>
													
													<asp:TextBox ID="IncomeNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="IncomeVerify" class="btn btn-outline-success" runat="server" Text="Verified" OnClick="IncomeVerify_Click"></asp:Button>									
														</TD>
													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#IncomeVerify').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#IncomeDocStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#IncomeNotVerify').keyup(function () {
                                                                $('#IncomeDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#IncomeDropDown').change(function () {
                                                            var qty = $('#IncomeDropDown').val();
                                                            $("#IncomeDocStatusLabel").val(qty);
                                                        });
													</script>
													</table>
											</div>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="IncomeNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Date </label> 
											<asp:TextBox ID="IncomeDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Authority </label> 
											<asp:TextBox ID="IncomeAuthority" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>
					    		</tbody>
					  		</table>

					  		<hr>

					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								NON-INDIVIDUAL BORROWER - PVT. LTD./LTD. COMPANY
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>


					      			<tr>
							        	<td> 
											<br><br><br><br>
											<label> Latest MOA/A0A & Incorporation Certificate </label> 
											<br />
											<strong>
											<asp:Label ID="CorpDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="CorpDocStatusLabel" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="CorpDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#CorpModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="CorpModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="CorpDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>
													<div class="dropdown">

														<select id="CorpDropDown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>

													<asp:TextBox ID="CorpNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="CorpVerify" class="btn btn-outline-success" runat="server" Text="Verified"></asp:Button>									
														</TD>
													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#CorpVerify').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#CorpDocStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#CorpNotVerify').keyup(function () {
                                                                $('#CorpDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#CorpDropDown').change(function () {
                                                            var qty = $('#CorpDropDown').val();
                                                            $("#CorpDocStatusLabel").val(qty);
                                                        });
													</script>
													</table>
											</div>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="CorpNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Date </label> 
											<asp:TextBox ID="CorpDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Authority </label> 
											<asp:TextBox ID="CorpAutho" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>
									

					    		</tbody>
					  		</table>

					  		<hr>

					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								NON-INDIVIDUAL BORROWER - PARTNERSHIP FIRM
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>


					      			<tr>
							        	<td> 
											<br><br><br><br>
											<label> Copy of latest partnership Deed, wherever applicable </label> 
											<br />
											<strong>
											<asp:Label ID="PartnerDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="PartnerDocStatusLabel" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="PartnerDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#PartnerModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="PartnerModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="PartnerDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>
													<div class="dropdown">

														<select id="PartnerDropDown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>

													<asp:TextBox ID="PartnerNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="PartnerVerify" class="btn btn-outline-success" runat="server" Text="Verified"></asp:Button>									
														</TD>
													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#PartnerVerify').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#PartnerDocStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#PartnerNotVerify').keyup(function () {
                                                                $('#PartnerDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#PartnerDropDown').change(function () {
                                                            var qty = $('#PartnerDropDown').val();
                                                            $("#PartnerDocStatusLabel").val(qty);
                                                        });
													</script>
													</table>
											</div>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="PartnerNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Date </label> 
											<asp:TextBox ID="PartnerDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Authority </label> 
											<asp:TextBox ID="PartnerAutho" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>


							      	


					    		</tbody>
					  		</table>

					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								ADDITIONAL INCOME DETAILS - IF APPLICABLE
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>


					      			<tr>
							        	<td> 
											<br><br><br><br>
											<label> Agricultrual Income - Latest 3 years ITRs </label> 
											<br />
											<strong>
											<asp:Label ID="AddiDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="AddiDocStatusLabel" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="AddiDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#AddiModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="AddiModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="AddiDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>
													<div class="dropdown">

														<select id="AddiDropDown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>

													<asp:TextBox ID="AddiNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="AddiVerify" class="btn btn-outline-success" runat="server" Text="Verified"></asp:Button>									
														</TD>
													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#AddiVerify').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#AddiDocStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#AddiNotVerify').keyup(function () {
                                                                $('#AddiDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#AddiDropDown').change(function () {
                                                            var qty = $('#AddiDropDown').val();
                                                            $("#AddiDocStatusLabel").val(qty);
                                                        });
													</script>
													</table>
											</div>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="AddiNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Date </label> 
											<asp:TextBox ID="AddiDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Authority </label> 
											<asp:TextBox ID="AddiAutho" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>							   


					    		</tbody>
					  		</table>

					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  								BANK STATEMENT
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>
					      			<tr>
							        	<td> 
											<br><br><br><br>
											<label> Bank Statement - Salaried Customers </label> 
											<br />
											<strong>
											<asp:Label ID="StatementDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="StatementDocStatusLabel" runat="server"></asp:TextBox>
							        	</td>

							        	<td> <asp:Image ID="StatementDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#BankModal" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="BankModal">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="StatementDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>
													<div class="dropdown">

														<select id="StatementDropDown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>
													</div>

													<asp:TextBox ID="StatementNotVerify" placeholder="mention if 'Other'" class="form-control" runat="server"></asp:TextBox>
														</TD>
														<TD>
													<asp:Button ID="StatementVerify" class="btn btn-outline-success" runat="server" Text="Verified"></asp:Button>									
														</TD>
													</TR>

													<script>
                                                        jQuery(function () {
                                                            $('#StatementVerify').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#StatementDocStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#StatementNotVerify').keyup(function () {
                                                                $('#StatementDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#StatementDropDown').change(function () {
                                                            var qty = $('#StatementDropDown').val();
                                                            $("#StatementDocStatusLabel").val(qty);
                                                        });
													</script>
													</table>
											</div>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="StatementNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Date </label> 
											<asp:TextBox ID="StatementDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Authority </label> 
											<asp:TextBox ID="StatementAutho" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>


					    		</tbody>
					  		</table>


					  		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
								OTHERS							
							</nav>

  							<table class="table table-hover" align="CENTER">
    							<thead>
      								<tr>
        								<th>Document Name</th>
        								<th>Document</th>
										<th>Description</th>
										          							
      								</tr>
    							</thead>

    							<tbody>
							      	<tr>
							        	<td> <br><br><br><br>
											<label> 12 months repayment track record </label>
											<br />
											<strong>
                                            <asp:Label ID="OtherDocName" runat="server"></asp:Label>
											</strong>
											<br />
											<asp:TextBox ID="OtherDocStatusLabel" runat="server" ReadOnly="true"></asp:TextBox>
							        	</td>
							        	<td> <asp:Image ID="OtherDoc" runat="server" class="img-rounded" data-toggle="modal" data-target="#myModal5" alt="Cinque Terre" Width="300" />
											 <div class="modal fade" id="myModal5">
												<div class="modal-dialog modal-lg">
													<center>
														<asp:Image ID="OtherDoc_1" runat="server" class="img-rounded" alt="Cinque Terre" Height="500" />
														<br /> <br />
														<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
													</center>
												</div>
											</div>

											<br>
											<div class="col-lg">											
												<table>	
												<TR>
													<TD>												
													<div class="dropdown">

														<select id="OtherDropdown" class="btn btn-outline-danger">
															<option value="Not Verified" selected>Not Verified</option>
															<option value="Info. Mismatch">Info. Mismatch</option>
															<option value="Blured Image">Blured Image</option>
															<option value="Image Not Found">Image Not Found</option>
															<option value="Other">Other</option>
														</select>

													</div>

														<input id="OtherNotVerify" class="form-control" placeholder="mention if 'Other'" type="text" name="inputBox" />
														</TD>
														<TD>
													<button id="OtherVerify" value="Verified" class="btn btn-outline-success" onclick="myFunction()">Verified</button>

														</TD>

													

													<script>
                                                        jQuery(function () {
                                                            $('#OtherVerify').click(function (e) {
                                                                e.preventDefault();
                                                                var name = "Verified";
                                                                $("#OtherDocStatusLabel").val(name);
                                                            });
                                                        });
													</script>

													<script type="text/javascript">
                                                        $(document).ready(function () {
                                                            $('#OtherNotVerify').keyup(function () {
                                                                $('#OtherDocStatusLabel').val($(this).val());
                                                            });
                                                        });
													</script>

													<script>
                                                        $('#OtherDropdown').change(function () {
                                                            var qty = $('#OtherDropdown').val();
                                                            $("#OtherDocStatusLabel").val(qty);
                                                        });
													</script>
<p>							 
  
													 
													
													</TR>
													</table>
											</div>
											
										</td>
							        	<td>
											<label> Document Number </label> 
											<asp:TextBox ID="OtherNum" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Date </label> 
											<asp:TextBox ID="OtherDate" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
											<label> Issuing Authority </label> 
											<asp:TextBox ID="OtherAutho" runat="server" type="text" class="form-control"></asp:TextBox>
											<br />
							        	</td>
							      	</tr>


					    		</tbody>
					  		</table>





						</div>
						
						
						<div class="container">


						<br />
						<asp:Button ID="Submit" class="btn btn-outline-danger btn-lg btn-block" data-bs-toggle="modal" data-bs-target="#SubmitModal" runat="server" Text="Submit" OnClick="Submit_Click"></asp:Button>

							<div class="modal fade" id="SubmitModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
								<div class="modal-content">
								  <div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								  </div>
							  
								  <div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

									<asp:Button ID="FinalSubmit" class="btn btn-primary" runat="server" Text="Save Changes" OnClick="FinalSubmit_Click"></asp:Button>
								  </div>
								</div>
							  </div>
							</div>
						</div>

						

						<br><br>
					</form>
					
						
				
</body>



  					


	<style>
	.dropbtn {
	  background-color: #4CAF50;
	  color: white;
	  padding: 16px;
	  font-size: 16px;
	  border: none;
	}

	.dropdown {
	  position: relative;
	  display: inline-block;
	}

	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f1f1f1;
	  min-width: 160px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}

	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}

	.dropdown-content a:hover {background-color: #ddd;}

	.dropdown:hover .dropdown-content {display: block;}

	.dropdown:hover .dropbtn {background-color: #3e8e41;}
	</style>


</html>