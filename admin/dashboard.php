<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (strlen($_SESSION['alogin']) == 0) {
	header('location:index.php');
} else {
?>
	<!doctype html>
	<html lang="en" class="no-js">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		<meta name="description" content="">
		<meta name="author" content="">
		<meta name="theme-color" content="#3e454c">

		<title>Azha Seserahan Palopo</title>

		<!-- Font awesome -->
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- Sandstone Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- Bootstrap Datatables -->
		<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
		<!-- Bootstrap social button library -->
		<link rel="stylesheet" href="css/bootstrap-social.css">
		<!-- Bootstrap select -->
		<link rel="stylesheet" href="css/bootstrap-select.css">
		<!-- Bootstrap file input -->
		<link rel="stylesheet" href="css/fileinput.min.css">
		<!-- Awesome Bootstrap checkbox -->
		<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
		<!-- Admin Stye -->
		<link rel="stylesheet" href="css/style.css">
	</head>

	<body>
		<?php include('includes/header.php'); ?>

		<div class="ts-main-content">
			<?php include('includes/leftbar.php'); ?>
			<div class="content-wrapper">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-12">

							<h2 class="page-title">Dashboard</h2>

							<div class="row">
								<div class="col-md-12">
									<div class="row">

										<div class="col-md-4">
											<div class="panel panel-default">
												<div class="panel-body bk-success text-light">
													<div class="stat-panel text-center">
														<?php
														$sql1 = "SELECT id from tblproduk ";
														$query1 = $dbh->prepare($sql1);
														$query1->execute();
														$results1 = $query1->fetchAll(PDO::FETCH_OBJ);
														$totalproduk = $query1->rowCount();
														?>
														<div class="stat-panel-number h1 "><?php echo htmlentities($totalproduk); ?></div>
														<div class="stat-panel-title ">Semua Produk</div>
													</div>
												</div>
												<a href="semuaproduk.php" class="block-anchor panel-footer text-center">Lihat Detail &nbsp; <i class="fa fa-arrow-right"></i></a>
											</div>
										</div>
										<div class="col-md-4">
											<div class="panel panel-default">
												<div class="panel-body bk-info text-light">
													<div class="stat-panel text-center">
														<?php
														$sql2 = "SELECT id from tblbooking ";
														$query2 = $dbh->prepare($sql2);
														$query2->execute();
														$results2 = $query2->fetchAll(PDO::FETCH_OBJ);
														$bookings = $query2->rowCount();
														?>

														<div class="stat-panel-number h1 "><?php echo htmlentities($bookings); ?></div>
														<div class="stat-panel-title ">Total Order</div>
													</div>
												</div>
												<a href="booking.php" class="block-anchor panel-footer text-center">Lihat Detail &nbsp; <i class="fa fa-arrow-right"></i></a>
											</div>
										</div>
										<div class="col-md-4">
											<div class="panel panel-default">
												<div class="panel-body bk-warning text-light">
													<div class="stat-panel text-center">
														<?php
														$sql3 = "SELECT id from tblkategori ";
														$query3 = $dbh->prepare($sql3);
														$query3->execute();
														$results3 = $query3->fetchAll(PDO::FETCH_OBJ);
														$brands = $query3->rowCount();
														?>
														<div class="stat-panel-number h1 "><?php echo htmlentities($brands); ?></div>
														<div class="stat-panel-title ">Semua Kategori</div>
													</div>
												</div>
												<a href="semuakategori.php" class="block-anchor panel-footer text-center">Lihat Detail &nbsp; <i class="fa fa-arrow-right"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



					<div class="row">
						<div class="col-md-12">


							<div class="row">
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-4">
											<div class="panel panel-default">
												<div class="panel-body bk-success text-light">
													<div class="stat-panel text-center">
														<?php
														$sql6 = "SELECT id from tblhubungikami ";
														$query6 = $dbh->prepare($sql6);;
														$query6->execute();
														$results6 = $query6->fetchAll(PDO::FETCH_OBJ);
														$query = $query6->rowCount();
														?>
														<div class="stat-panel-number h1 "><?php echo htmlentities($query); ?></div>
														<div class="stat-panel-title ">Hubungi Kami</div>
													</div>
												</div>
												<a href="hubungikami.php" class="block-anchor panel-footer text-center">Lihat Detail &nbsp; <i class="fa fa-arrow-right"></i></a>
											</div>
										</div>
										<div class="col-md-4">
											<div class="panel panel-default">
												<div class="panel-body bk-info text-light">
													<div class="stat-panel text-center">
														<?php
														$sql5 = "SELECT id from tbltestimonial ";
														$query5 = $dbh->prepare($sql5);
														$query5->execute();
														$results5 = $query5->fetchAll(PDO::FETCH_OBJ);
														$testimonials = $query5->rowCount();
														?>

														<div class="stat-panel-number h1 "><?php echo htmlentities($testimonials); ?></div>
														<div class="stat-panel-title ">Testimoni Pelanggan</div>
													</div>
												</div>
												<a href="testimonials.php" class="block-anchor panel-footer text-center">Lihat Detail &nbsp; <i class="fa fa-arrow-right"></i></a>
											</div>
										</div>
										<div class="col-md-4">
											<div class="panel panel-default">
												<div class="panel-body bk-primary text-light">
													<div class="stat-panel text-center">
														<?php
														$sql = "SELECT id from tbluser ";
														$query = $dbh->prepare($sql);
														$query->execute();
														$results = $query->fetchAll(PDO::FETCH_OBJ);
														$regusers = $query->rowCount();
														?>
														<div class="stat-panel-number h1 "><?php echo htmlentities($regusers); ?></div>
														<div class="stat-panel-title ">User</div>
													</div>
												</div>
												<a href="reg-users.php" class="block-anchor panel-footer">Lihat Detail <i class="fa fa-arrow-right"></i></a>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>









				</div>
			</div>
		</div>

		<!-- Loading Scripts -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap-select.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.dataTables.min.js"></script>
		<script src="js/dataTables.bootstrap.min.js"></script>
		<script src="js/Chart.min.js"></script>
		<script src="js/fileinput.js"></script>
		<script src="js/chartData.js"></script>
		<script src="js/main.js"></script>

		<script>
			window.onload = function() {

				// Line chart from swirlData for dashReport
				var ctx = document.getElementById("dashReport").getContext("2d");
				window.myLine = new Chart(ctx).Line(swirlData, {
					responsive: true,
					scaleShowVerticalLines: false,
					scaleBeginAtZero: true,
					multiTooltipTemplate: "<%if (label){%><%=label%>: <%}%><%= value %>",
				});

				// Pie Chart from doughutData
				var doctx = document.getElementById("chart-area3").getContext("2d");
				window.myDoughnut = new Chart(doctx).Pie(doughnutData, {
					responsive: true
				});

				// Dougnut Chart from doughnutData
				var doctx = document.getElementById("chart-area4").getContext("2d");
				window.myDoughnut = new Chart(doctx).Doughnut(doughnutData, {
					responsive: true
				});

			}
		</script>
	</body>

	</html>
<?php } ?>