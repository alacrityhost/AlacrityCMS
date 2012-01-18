<!DOCTYPE html>
<head>
	<link rel="stylesheet" href="/public/css/blueprint/screen.css" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="/public/css/blueprint/print.css" type="text/css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" href="/public/css/blueprint/ie.css" type="text/css" media="screen, projection" />
	<![endif]-->
	<link rel="stylesheet" href="/public/css/style.css" type="text/css" media="screen"/>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
</head>
<body id="home">
	<div class="container">
		<header>
			<div class="span-24">
				<div class="span-24">
					<img src="/public/images/AGbar.png" style="position:relative;left:-10px;"/>
				</div>
				<div class="span-8 first">
					<img src="/public/images/assets/grid/span-8-rows-9.gif"/>
				</div>
				<div id="extras" class="span-12 prepend-4 last">
					<div class="span-12 last">
						<img src="/public/images/assets/grid/span-12-rows-4.gif"/>
					</div>
				</div>
				<div class="span-8" id="tagline">
					<img src="/public/images/assets/grid/span-8-rows-4.gif"/>
				</div>
				<div class="span-8 last right" id="search">
					<img src="/public/images/assets/grid/span-8-rows-2.gif"/>
				</div>
			</div>
		</header>
		<div class="span-24 section">
			<section id="featured">
				<div class="span-18 first">
					<!-- Featured article box goes here -->
				</div>
			</section>
			<section id="sidebar">
				<div class="span-6 last right sidebar">
					<!-- Sidebar content goes here -->
					<?php  $sidebar ?>
				</div>
			</section>
			<section id="main">
				<div class="span-18 left">