<html>
	<head>
		<title>Welcome to JavaJam Coffee House</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>css/javacoffee.css">
	</head>
	<body>
		<div id="wrapper">
			<div class="row">	
				<div class="colleft">
					<img id="javajamlogo" src="<?php echo base_url();?>images\javajamlogo.jpg" alt="javajamlogo">
					<ul>
					<!--We should not use nbsp as it wont collapse like multiple regular spaces.It is standard practise to follow padding and margins for spacing between elements.-->					
						<li><a class="align" href="<?php echo base_url();?>index.php/main/index/home.php">Home</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/main/menu/menu.php">Menu</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/music/musicController">Music</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/jobs/jobsController">Jobs</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/gear/gearController">Gear</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/gear/cartController">Cart</a></li>
						<li><a class="align" href="<?php echo base_url();?>index.php/gear/orderController">Order</a></li>
					</ul>
				</div>
