<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
	<html lang="en">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
			
			<title>Pears </title>
			
			<!-- hide css from IE6 but load for everyone else -->
			<!--[if gte IE 7]><!-->
			<link rel="stylesheet/less" media="screen, projection" href="{$workspace}/assets/css/screen.less" />
			<!-- <![endif]-->
			
			<link rel="shortcut icon" href="favicon.png" /> 
			
			<!-- enable HTML5 elements in IE7+8 -->
			<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<![endif]-->
			
			<script type="text/javascript" src="{$workspace}/assets/js/less.js"></script>
			<script type="text/javascript" src="http://use.typekit.com/kpo7dtm.js"></script>
			<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
		</head>
		<body class="home page page-id-2 page-template page-template-default">
			<header role="banner" class="group">
				<a href="index.html" id="logo">
					Pears <em>are common patterns of markup &amp; style</em>
				</a>
			</header>
			<div class="wrap group">
				<div class="main" role="main">
					<div id="container">
						<div id="content" role="main">
							<xsl:apply-templates />
						</div><!-- #content -->
					</div><!-- #container -->
					<nav id="nav" class="group">
						<a href="#" id="nav-toggle">hide</a>
							<h2><a href="#">Content</a></h2><ul><li><a href="content/blog-post/index.html">Article</a></li><li><a href="content/data-table/index.html">Data Table</a></li><li><a href="content/footer/index.html">Footer</a></li><li><a href="content/slats-html5/index.html">Slats (HTML5)</a></li><li><a href="content/slats-text-only/index.html">Slats (text only)</a></li><li><a href="content/slats-thumbnails/index.html">Slats (thumbnails)</a></li><li><a href="content/thumbnail-grid/index.html">Thumbnail Grid</a></li></ul><h2><a href="#">Forms</a></h2><ul><li><a href="forms/multi-left-labels/index.html">Multi (left labels)</a></li><li><a href="forms/top-labels/index.html">Multi (top labels)</a></li><li><a href="forms/search/index.html">Search</a></li><li><a href="forms/simple-top-labels/index.html">Simple (top labels)</a></li></ul><h2><a href="#">Lists</a></h2><ul><li><a href="lists/definition/index.html">Definition</a></li><li><a href="lists/stats-tabs/index.html">Stats Tabs</a></li><li><a href="lists/tags-buttons/index.html">Tags (buttons)</a></li><li><a href="lists/tags-vertical/index.html">Tags (vertical)</a></li></ul><h2><a href="#">Navigation</a></h2><ul><li><a href="navigation/breadcrumb/index.html">Breadcrumb</a></li><li><a href="navigation/horizontal-buttons/index.html">Horizontal Buttons</a></li><li><a href="navigation/horizontal-links/index.html">Horizontal Links</a></li><li><a href="navigation/horizontal-tabs/index.html">Horizontal Tabs</a></li><li><a href="navigation/pagination/index.html">Pagination</a></li><li><a href="navigation/vertical-links/index.html">Vertical Links</a></li></ul>
					</nav>
				</div>
			</div> <!-- /wrap -->
			<div id="pears-footer">
				<p>Pears is handcrafted in Salem, Massachusetts by <a href="http://simplebits.com">SimpleBits</a>.</p>
				
				<p class="cc">This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.</p>
			
				<p><a href="http://simplebits.com" id="sb"><img src="{$workspace}/assets/images/sb-black.png" /></a></p>
			</div> <!-- /footer -->
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.js"></script>
			
			<script>
			$(document).ready(function() { 
				// update rendered pattern when user edits the textareas
				$('#markup textarea').live('keyup', function(e) {
					$('#pattern-wrap').html($(this).val());
				});
				$('#style textarea').live('keyup', function(e) {
					$('div.main style').html($(this).val());
				});
				
				// auto-select code in textarea when clipboard icon is clicked
				$('#markup a.clip').click(function(){
					$('#markup textarea').select();
					return false;
				});
				$('#style a.clip').click(function(){
					$('#style textarea').select();
					return false;
				});
				
				// expand/collapse side nav
				$('#nav-toggle').click(function() {
					$('body').toggleClass('expanded');
					return false;
				});
			}); 
			</script>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>