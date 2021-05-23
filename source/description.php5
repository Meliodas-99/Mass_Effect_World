<!DOCTYPE html>
<html>
<?php
	function to_name($str)
	{
		$str;
		$words=explode("_",$str);
		if(count($words)>1)
		{
			for($i=0;$i<count($words);$i++)
			{
				$words[$i]=ucfirst($words[$i]);
			}
			$str= implode(" ",$words);
		}
		else
		{
			$words=explode(" ",$str);
			if(count($words)>1)
			{
				for($i=0;$i<count($words);$i++)
				{
					$words[$i]=ucfirst($words[$i]);
				}
				$str= implode(" ",$words);
			}
			else{
				$str=ucfirst($str);
			}
		}
		return $str;
	}
	function ammo_value($max_ammo)
	{
		$str="";
		if($max_ammo==0)$str="Infinity";
		else $str=$max_ammo;
		return $str;
	}
	$server = 'localhost:3306'; 
	$username = 'root';
	$password = '';
	$connection = mysqli_connect($server, $username, $password,"mass_effect_world");
	
	$back_pages=array("races","materials","weapons");
	$shadows=array("blue_shadow","white_shadow","orange_shadow");
	$backdrops=array("blue_backdrop","white_backdrop","orange_backdrop");
	$back_buttoncolors=array("rgba(69,99,200,1)","rgba(159,200,200,1)","rgba(200,159,0,1)");
	$items=array();
	
	$sql = "SELECT `name`,`description`,`location`,`type`,`gender`,`lifetime`,`status`,`government` FROM `races`;";
	$result = $connection->query($sql);
	if($result->num_rows>0)
	{
		$items[0]=array();
		$count = 0;
		while($row = $result->fetch_assoc())
		{
			$items[0][$count]=array("r_".$row["name"],$row["description"],$row["location"],$row["type"],$row["gender"],$row["lifetime"],$row["status"],$row["government"]);
			$count++;
		}
	}
	sort($items[0]);
	$sql = "SELECT `name`,`description`,`location`,`rarity` FROM `materials`;";
	$result = $connection->query($sql);
	if($result->num_rows>0)
	{
		$items[1]=array();
		$count = 0;
		while($row = $result->fetch_assoc())
		{
			$items[1][$count]=array("m_".$row["name"],$row["description"],$row["location"],$row["rarity"]);
			$count++;
		}
	}
	sort($items[1]);
	$sql = "SELECT `name`,`description`,`category`,`rarity`,`techtype`,`modslots`,`damage`,`rof`,`mcs`,`maxammo`,`accuracy`,`weight` FROM `weapons`;";
	$result = $connection->query($sql);
	if($result->num_rows>0)
	{
		$items[2]=array();
		$count = 0;
		while($row = $result->fetch_assoc())
		{
			$items[2][$count]=array("w_".$row["name"],$row["description"],$row["category"],$row["rarity"],$row["techtype"],$row["modslots"],$row["damage"],$row["rof"],$row["mcs"],$row["maxammo"],$row["accuracy"],$row["weight"]);
			$count++;
		}
	}
	sort($items[2]);
	
	$connection->close();
	
	$table_id=-1;
	$item_id=-1;
	for($j=0;$j<3;$j++){
		$i=0;
		while($i<10)
		{
			if(isset($_POST[$items[$j][$i][0]]))
			{
				$table_id=$j;
				$item_id=$i;
			}
			$i++;
		}
	}
	$item=$items[$table_id][$item_id];
	if($table_id==2)$item_name=to_name(substr($item[0],2,strlen($item[0])-2));
	else $item_name=ucfirst(substr($item[0],2,strlen($item[0])-2));
	$back_page=$back_pages[$table_id];
	$shadow=$shadows[$table_id];
	$backdrop=$backdrops[$table_id];
	$back_buttoncolor=$back_buttoncolors[$table_id];
?>
<head>
	<link rel="stylesheet" href="styles.css">
</head>
	<title>Mass Effect World</title>
	<body style="background-image:url('img/bg_<?=$back_page?>.jpg');">
		<div id="main_panel">
			<div id="<?=$backdrop?>">
				<div class="left_part <?=$shadow?>">
					<h1><?=$item_name?></h1>
					<?php
						if($table_id<2)
						{
							echo "<h2>Location: ".$item[2]."</h2>";
						}
						else
						{
							echo "<h2>Category: ".to_name($item[2])."</h2>";
						}
					?>
					<h2>Description:</h2>
					<p><?=$item[1]?></p>
				</div>
				<div class="right_part <?=$shadow?>">
					<img src="img/<?=$item[0]?>.png">
					<hr><h2 style="margin:5px;">Parameters</h2><hr>
					<table>
						<?php 
							if($table_id==0)
							{
								echo"<tr><td>Type:</td><td>".$item[3]."</td></tr>";
								echo"<tr><td>Gender:</td><td>".$item[4]."</td></tr>";
								echo"<tr><td>Lifetime:</td><td>".$item[5]."</td></tr>";
								echo"<tr><td>Status:</td><td>".$item[6]."</td></tr>";
								echo"<tr><td>Government:</td><td>".$item[7]."</td></tr>";
							} 
							if($table_id==1)
							{
								echo"<tr><td>Rarity:</td><td>".$item[3]."</td></tr>";
							}
							if($table_id==2)
							{
								echo"<tr><td>Rarity:</td><td>".to_name($item[3])."</td></tr>";
								echo"<tr><td>Tech type:</td><td>".to_name($item[4])."</td></tr>";
								echo"<tr><td>Mod slots:</td><td>".$item[5]."</td></tr>";
								echo"<tr><td>Damage:</td><td>".$item[6]."</td></tr>";
								if(intval($item[5])>0)
								{
									echo"<tr><td>Rate of fire:</td><td>".$item[7]."</td></tr>";
									echo"<tr><td>Max clip size:</td><td>".$item[8]."</td></tr>";
									echo"<tr><td>Max ammo:</td><td>".ammo_value($item[9])."</td></tr>";
									echo"<tr><td>Accuracy:</td><td>".$item[10]."</td></tr>";
								}
								echo"<tr><td>Weight:</td><td>".$item[11]."</td></tr>";
							}
						?>
					</table>
				</div>
			</div>
			<div style="width:1px;min-height:140px;float:bottom;"></div>
		</div>
		<div id="header"class="<?=$shadow?>"><h1>Mass Effect World: <?=ucfirst($back_page)?>: <?=$item_name?></h1></div>
		<div id="footer"class="<?=$shadow?>">
			<table>
				<tbody>
					<tr>
						<td><h1><a  id="back_button"style="color:<?=$back_buttoncolor?>;"href="<?=$back_page?>.php5">Back</a></h1></td>
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