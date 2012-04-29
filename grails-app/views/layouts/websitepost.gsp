<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<title><g:layoutTitle default="Facebook Grails SDK Website Example" /></title>
	<g:layoutHead />
	<r:require module="website"/>
	<r:layoutResources />
	<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
  </head>

<body>
	<div class="topbar">
		<div class="fill">
			<div class="container">
				<a class="brand" href="#">Facebook Grails SDK</a>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="content">
			<g:layoutBody />
		</div>
		<g:render template="/website/footer" />
	</div>
	<r:layoutResources />
</body>
</html>