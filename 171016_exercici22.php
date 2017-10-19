<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta charset="utf-8"/>
	</head>
	<body>
		<?php
			$conexion=mysqli_connect("localhost", "root", "", "1718_tienda");
			if(!$conexion){
			    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
			    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
			    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
			    exit;
			} else {
				//informamos a la BD que toda consulta que realicemos, la queremos con los contenidos pasados a utf8
				$acentos=mysqli_query($conexion, "SET NAMES 'utf8'");

				$categoria=$_REQUEST['cat_id'];
				$q = "select * from producto where cat_id=$categoria";
				echo $q . "<br/><br/>";
				$resultados = mysqli_query($conexion, $q);

				if(mysqli_num_rows($resultados)>0){
					while($producto = mysqli_fetch_array($resultados)){
						echo "ID: $producto[pro_id]<br/>";
						echo "Nombre: $producto[pro_nombre]<br/>";
						echo "Descripción: $producto[pro_descripcion]<br/>";
						echo "Precio: $producto[pro_precio]<br/><br/>";
					}
				} else {
					echo "No hay productos que mostrar";
				}
			}
		?>
	</body>
</html>


