<!DOCTYPE html>
<html>
<?php
	$server = 'localhost:3306'; 
	$username = 'root';
	$password = '';
	$connection = mysqli_connect($server, $username, $password,"mass_effect_world");
	$sql = "SELECT `name` FROM `materials`;";
	$result = $connection->query($sql);
	if($result->num_rows>0)
	{
		$item_imgs=array();
		$count = 0;
		while($row = $result->fetch_assoc())
		{
			$item_imgs[$count]=$row["name"];
			$count++;
		}
	}
	$connection->close();
	sort($item_imgs);
?>
<head>
	<link rel="stylesheet" href="styles.css">
</head>
	<title>Mass Effect World</title>
	<body style="background-image:url('img/bg_materials.jpg');">
		<div id="main_panel">
			<form id="white_backdrop"action="description.php5" method="post">
				<table>
					<tr>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[0]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[0]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[0])?></h1>
							</button>
						</td>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[1]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[1]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[1])?></h1>
							</button>
						</td>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[2]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[2]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[2])?></h1>
							</button>
						</td>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[3]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[3]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[3])?></h1>
							</button>
						</td>
					</tr>
					<tr>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[4]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[4]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[4])?></h1>
							</button>
						</td>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[5]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[5]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[5])?></h1>
							</button>
						</td>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[6]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[6]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[6])?></h1>
							</button>
						</td>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[7]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[7]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[7])?></h1>
							</button>
						</td>
					</tr>
					<tr>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[8]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[8]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[8])?></h1>
							</button>
						</td>
						<td id="table_a"class="white_shadow">
							<button id="item"type="submit"name="m_<?=$item_imgs[9]?>">
								<div id="item_img"><img src="img/m_<?=$item_imgs[9]?>.png"></div>
								<hr>
								<h1><?=ucfirst($item_imgs[9])?></h1>
							</button>
						</td>
						<td style="width:48%;min-height:150px;float:right;">
						</td>
					</tr>
				</table>
			</form>
			<div style="width:1px;min-height:140px;float:bottom;"></div>
		</div>
		<div id="header"class="white_shadow"><h1>Mass Effect World: Materials</h1></div>
		<div id="footer"class="white_shadow">
			<table>
				<tbody>
					<tr>
						<td><h1><a  id="back_button"style="color:rgba(159,200,200,1);"href="index.html">Back</a></h1></td>
						<td><h1>Credits:</h1></td>
						<td><h1><a id="cookies_lord"class="credit" href="https://vk.com/cookies_lord">Cookies Lord </a></h1></td>
						<td><h1><a id="joker_dark"class="credit"  href="https://vk.com/jeradark">Joker Dark </a></h1></td>
						<td><h1><a id="ree"class="credit"  href="https://vk.com/re.mavin">Ree </a></h1></td>
						<td><h1><a id="snayx"class="credit"  href="https://vk.com/snayx">SNAYX </a></h1></td>
					</tr>
				</tbody>
			</table>
		</div>
	</body>
</html>