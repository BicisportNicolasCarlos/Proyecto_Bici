<!DOCTYPE html>
<html>
	<head>
		<title>quesitss</title>
		<meta charset="utf-8"/>
	</head>
	<body>
		<?php
			$conexion=mysqli_connect("localhost", "root", "", "proyecto1_bis");


			if($_REQUEST['ubi']!=""){
					$q = "SELECT * FROM anunci WHERE anu_ubicacio_robatori LIKE '%$_REQUEST[ubi]%' AND anu_marca LIKE '%$_REQUEST[marca]%' AND anu_color LIKE '$_REQUEST[color]%' AND anu_data_robatori LIKE '%$_REQUEST[data]%'";
			} else {
					$q = "SELECT * FROM anunci";
			}

			echo "$q<br/>";

			$consulta = mysqli_query($conexion, $q);

			if(mysqli_num_rows($consulta)){
				$a_anunci = mysqli_num_rows($consulta);
				echo "Ubicacion: $_REQUEST[ubi]<br/><br/>";
				echo "Marca: $_REQUEST[marca]<br/><br/>";
				echo "Color: $_REQUEST[color]<br/><br/>";
				echo "Fecha robo: $_REQUEST[data]<br/><br/>";
				echo "mostrar $a_anunci<br/><br/>";

				while($anunci=mysqli_fetch_array($consulta)){
					echo "<div style='width: 200px; float: left;'>";
					echo "<b>ID</b>: $anunci[anu_id]<br/>";
					echo "<b>Ubicacion</b>: $anunci[anu_ubicacio_robatori]<br/>";
					echo "<b>Marca</b>: $anunci[anu_marca]<br/>";
					echo "<b>Color</b>: $anunci[anu_color]<br/>";
					echo "<b>Fecha robo</b>: $anunci[anu_data_robatori]<br/>";
					echo "</div>";
				}

			} else {
				echo "No hay bicicletas que mostrar.";
			}


		?>
		<br/><br/>
		<a href="robadas.html">Volver</a>
	</body>
</html>