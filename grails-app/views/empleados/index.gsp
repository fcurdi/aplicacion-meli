<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${request.contextPath}/css/validacion.css">
		<script type="text/javascript" src="${request.contextPath}/js/jquery-2.1.3.js"></script>
		<script type="text/javascript" src="${request.contextPath}/bootstrap/js/bootstrap.js"></script>
		<link rel="icon" type="image/png" href="http://developers.mercadolibre.com/wp-content/uploads/logo_puzzle_slider.png" />
		<title>Cumples MELI</title>
	</head>
	<body>
	    <nav class="navbar navbar-default">
	      <div class="container">
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
	            <li ><a href="/cumplesMeli/empleados/buscarEmpleado">Buscar Empleado<span class="sr-only">(current)</span></a></li>
	            <li class="active"><a href="#" data-toggle="modal" data-target="#myModal">Crear Empleado <span class="sr-only">(current)</span></a></li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </nav>

		<div class="container">
			<div style = "text-align: center" class="jumbotron">
				<p style = "font-size: 30px">Cumpleaños del Dia</p>
				<p id="fechaDeHoy" style = "font-size: 30px" ></p>
				<script>
				//para ver la fecha facil en el home. Habria que mostrarla mas linda <------
				var d = new Date();
				var month = d.getMonth()+1;
				var day = d.getDate();
				$("#fechaDeHoy").html(day + "/" + month);</script>
			</div>
	    </div>
		<div class="container marketing" style="width: 60%">	
				<g:each in="${infoRegalos}" var="empleado">
					<hr class="featurette-divider">
			      	<div class="row featurette">	          		 
			          		<h2 class="featurette-heading">${empleado.nombre} ${empleado.apellido} ${empleado.fechaCumpleanios}</h2>
			          		 <g:if test="${empleado.regalo == null}">
			          		 	<div class="col-md-7">
			          				<a class="btn btn-primary btn-lg" style="color: white"href="/cumplesMeli/empleados/regalo/${empleado.id}">Agregar Regalo</a>
			          			</div>
							</g:if>
			          		<g:else>
			          	       	<div class="col-md-7">
			          				<h2 class="featurette-heading"><span class="text-muted">${empleado.regalo.tituloProducto}</span></h2>
			          				<a class="btn btn-primary btn-lg" style="color: white" href="/cumplesMeli/empleados/regalo/${empleado.id}">Cambiar Regalo</a>
			          				<a class="btn btn-primary btn-lg" style="color: white" href="/cumplesMeli/empleados/cancelar/${empleado.id}">Cancelar Regalo</a>			          				
			        			</div>
			          			<div class="col-md-5">	
			          				<img class="featurette-image img-responsive" src="${empleado.regalo.urlFotoProducto}" width="300" alt="Generic placeholder image">
			        			</div>
							</g:else>

			        </div>
			    </g:each>
	      <hr class="featurette-divider">
	    </div>

		<!-- Modal -->
		<div class="modal fade bs-example-modal-sm" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title"  style="text-align: center" id="myModalLabel">Agregar Empleado</h4>
		      </div>

		    <div class="modal-body">
		        <div class="container marketing" style="width: 40%">	
			     	<div class="row featurette" >
			          	<g:form method="post" controller="empleados" action="agregarEmpleado">
			          	<div>
	                        <h2 class="featurette-heading">Nombre:</h2>
	                        <span id="spanNombre" class="error">Completar campo</span>
	                        <g:textField id="campoNombre" name="nombre" value="${myValue}" />
	                    </div>
	                    <div>
	                        <h2 class="featurette-heading">Apellido:</h2>
   	                        <span id="spanApellido" class="error">Completar campo</span>
	                        <g:textField id="campoApellido" name="apellido" value="${myValue}" />
	                    </div>
	                    <div>
	                        <h2 class="featurette-heading">Fecha: </h2>
	                        <span id="spanFecha"  class="error">Elegir fecha</span> 
	                       <input id="campoFecha" type="date" name="fecha" step="1" min="1930-01-01"
	                         max="2030-12-31" value="${new Date()}" autocomplete="on">
	                    </div>

	                       <br>
	                       <br>

	                       <button id="botonAgregarEmpleado" class="btn btn-primary btn-lg"><a style="color: white">Agregar Empleado</a> </button> 


	                    </g:form>  
	                    <script>

							function colorearCampo() {
								var campo = $(this);
								var contenido = campo.val();
								if(contenido != "")
									campo.removeClass("invalid").addClass("valid");
								else
								   	campo.removeClass("valid").addClass("invalid");
							}

							$("#campoNombre").on("input",colorearCampo);
							$("#campoApellido").on("input",colorearCampo);
							$("#botonAgregarEmpleado").click(function (event){
							    var validadoOK = true;
								var elemento = $("#campoNombre");
								if(!elemento.hasClass("valid")){
									$("#spanNombre").removeClass("error").addClass("error_show")
									validadoOK = false;
								}

								var elemento = $("#campoApellido");
								if(!elemento.hasClass("valid")){
									$("#spanApellido").removeClass("error").addClass("error_show")
									validadoOK = false;
								}

								if($("#campoFecha").val() == ""){
									$("#spanFecha").removeClass("error").addClass("error_show")
									validadoOK = false;
								}

								if(!validadoOK)
									event.preventDefault();
							});


						</script>

		         	</div>  
		      	</div>
		    </div>
		  </div>
		</div>
		</div>
</script>
</html>


