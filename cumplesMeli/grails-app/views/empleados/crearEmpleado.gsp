<html>
	<head>
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/bootstrap/css/bootstrap.css">

		<script type="text/javascript" src="${request.contextPath}/js/jquery-2.1.3.js"></script>
		<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap.js"></script>
		<link rel="icon" type="image/png" href="http://developers.mercadolibre.com/wp-content/uploads/logo_puzzle_slider.png" />
		<title>Crear Empleado</title>
	</head>
	<body>
		<div>
		    <nav class="navbar navbar-default navbar-fixed-top">
		      <div class="container">
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
		            <li class="active"><a href="./">Crear Empleado <span class="sr-only">(current)</span></a></li>
		          </ul>
		        </div><!--/.nav-collapse -->
		      </div>
		    </nav>
			
			<div class="container marketing">	
				<hr class="featurette-divider">

		      	<div class="row featurette">
		        	<div class="col-md-7">
		          		<h2 class="featurette-heading">Nombre Apellido Fecha <span class="text-muted">Regalo</span></h2>
		          		<p class="lead">Ver de poner descriocion.</p>
		        	</div>
		       		<div class="col-md-5">	
		          		<img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" 	alt="Generic placeholder image">
		        	</div>
		      </div>


<g:form method="post" controller="tweets">
<h2 class="featurette-heading">Nombre</h2>
<g:textField name="Input1" value="${myValue}" />
<h2 class="featurette-heading">Apellido</h2>
<g:textField name="Input1" value="${myValue}" />
<h2 class="featurette-heading">Fecha </h2>
<g:textField name="Input1" value="${myValue}" />
<g:actionSubmit value="${message(code:'Enviar')}" action="crearTweet" />

</g:form>
		      
		      
		      
		 
		    </div>
	      <hr class="featurette-divider">
	    </div>
	</body>
</html>