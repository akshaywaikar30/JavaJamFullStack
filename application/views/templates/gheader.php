
<html>
	<head>
		<title>Welcome to JavaJam Coffee House</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/javacoffee.css">
	</head>
	<script type="text/javascript" src="<?php echo base_url();?>cart.js"></script>
	<body>
		<div id="wrapper">
			<div class="row">	
				<div id="gcolleft">
					<img id="javajamlogo" src="<?php echo base_url();?>images\javajamlogo.jpg" alt="javajamlogo">
					<ul>					
						<li><a class="align" href="<?php echo base_url();?>index.php/main/index">Home</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/main/menu">Menu</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/music/musicController/music">Music</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/jobs/jobsController">Jobs</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/index.php/gear/gearController">Gear</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/gear/cartController">Cart</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/gear/orderController">Order</a></li>
					</ul>index.php/gear/gearController
				</div>
				<div id="gcolright" style="overflow-y: scroll;">
					<header id="gheader">
						<h1>JavaJam Coffee House</h1>
					</header>