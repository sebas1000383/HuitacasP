<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>


	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript" src="validation.js"></script>
</head>
<body style="background-color:#E28EEB;">

<div class="row justify-content-center align-items-center vh-100">
	<aside class="col-sm-4">

		<div class="card">
			<article class="card-body">

	<h1>Registrar Afectada</h1>

	<form method="post" action="AfectadaController?accion=add">

		<!-- ESTOS DATOS SE MIRAN EN LA BD  -->
		<div class="form-group">
			<label for="nombre">Nombre</label> 
			<input class="form-control" type="text" name="nombre" placeholder="Ingrese su nombre" required>
		</div>
		<div class="form-group">
			<label for="apellido">Apellido</label> 
			<input class="form-control" type="text" name="apellido" placeholder="Ingrese su Apellido" required>
		</div>
		<div class="form-group">
			<label for="correo">Correo</label>
			<input class="form-control" type="email" name="correo" placeholder="Ingrese su Correo" required>
		</div>
		<div class="form-group">
			<label for="contrasena">Contrasena</label>
			<input class="form-control" type="password" name="contrasena" placeholder="Ingrese su contraseņa " required>
		</div>
		<div class="form-group">
			<label for="numeroDocumento">Numero de Documento</label>
			<input class="form-control" type="number" name="numeroDocumento" placeholder="Ingrese su Numero De Documento " required>
		</div>
		<div class="form-group">
			<label for="fechaNa">Fecha De Nacimiento:</label>
			<input class="form-control" type="date" name="fechaNa" placeholder="Ingrese su Fecha De Nacimiento " required>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" name="chkEstado" id="chkEstado" checked>
			<label class="form-check-label" for="flexCheckChecked">
				Activo
			</label>
		</div>
		<div class="form-group">
			<label for="cargo">Cargo Usuario</label>
			<select name="cargo" class="form-select">
				<option>Seleccione el cargo del Usuario</option>
				<option value="afectada">Cliente</option>

			</select>


		<br>
		<input class="checkbox" name="aceptar" type="checkbox"
			   required><strong>  ACEPTO</strong> los
		<button type="button"class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#exampleModal" role="link">
			terminos y condiciones
		</button>

		<div id="formFooter">

			<input type="reset"class="btn btn-link btn-sm" value="Cancelar">

		</div>
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">


					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Terminos y condiciones </h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<figure class="modal_picture">

							<img src="https://img.icons8.com/external-inipagistudio-lineal-color-inipagistudio/50/000000/external-approve-lawmaker-inipagistudio-lineal-color-inipagistudio.png"/>
							<!--  img src="https://storyset.com/illustration/self-checkout/amico" style="s" class="modal_picture">-->

						</figure>
						Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ipsum quae ex nesciunt voluptatibus quo atque architecto beatae,
						eaque iure sapiente amet officia fugiat quibusdam minima ducimus repellat in, quasi ipsa.
						...
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>

					</div>
				</div>
			</div>
		</div>
		</div>

		<!-- Remind Passowrd -->

		<div>

			<br>
			<button type="submit" class="btn btn-primary">Guardar</button>
		</div>




		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

		<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

</div>
</article>
</div>
</aside>
</div>
</form>

<!-- LIBRERIA JQUERY -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
	function verifyCorreo(){
		const correo=document.getElementById("correo").value;

		$.ajax({
			url:"RolController?accion=validarCorreo",
			data:{
				correo:correo
			},
			success: function(result){
				$("#validarC").html(result);
			}
		})
	}

</script>

</body>
</html>

	
	
