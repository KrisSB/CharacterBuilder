<?php

function check_password($user,$pass) {

	$sql = "SELECT * FROM phpbb_users WHERE username_clean = '$user'";
	$mq = mysql_query($sql);
	$num = mysql_num_rows($mq);
	$cURL = $_SESSION["REQUEST_URI"];
	if($num == 1) {
	
		$fetch = mysql_fetch_array($mq);
		$dbuser = $fetch["username"];
		$dbpass = $fetch["user_password"];
		$check = phpbb_check_hash($pass,$dbpass);
		if($check == FALSE) {
		
			echo "Incorrect Username or Password!";
		
		} else if($check == TRUE) {
		
			if(!isset($_SESSION["username"]) && !isset($_SESSION["password"])) {
			
				$_SESSION["username"] = $dbuser;
             			$_SESSION["password"] = $pass;
             			return 2;
			
			} else {
			
				$admin_check = $fetch["group_id"];
				if($admin_check == 5) {
					echo "<div id=\"login\">Welcome $dbuser <a href=\"logout.php\">Log Out</a> <a href=\"admin.php\">Admin Control Panel</a></div>";
					return 1;
				} else {
					echo "<div id=\"login\">Welcome $dbuser <a href=\"logout.php\">Log Out</a></div>";
				}
			
			}
		
		}
	
	} else {
		echo "Incorrect Username or Password!";
	}

}
function check_admin() {

	$user = $_SESSION['username'];
     	$user = strtolower($user);
     	$pass = $_SESSION['password'];
     	$sql = "SELECT * FROM phpbb_users WHERE username_clean = '$user'";
	$mq = mysql_query($sql);
	$num = mysql_num_rows($mq);
	if($num == 1) {
	
		$check = phpbb_check_hash($pass,$dbpass);
		if($check == TRUE) {
			$admin_check = $fetch["group_id"];
			if($admin_check == 5) {
			
				return TRUE;
				
			} else {
			
				return FALSE;
				
			}
		}
	
	}

}
function dbuser() {
	$user = $_SESSION["username"];
	$user = strtolower($user);
	$sql = "SELECT * FROM phpbb_users WHERE username_clean = '$user'";
	$mq = mysql_query($sql);
	$num = mysql_num_rows($mq);
	if($num == 1) {
		$fetch = mysql_fetch_array($mq);
		$dbuser = $fetch["username"];
		return $dbuser;
	}

}
function error() {
	echo "Make sure the URL is correct with no quotations";
}
function page($table,$check_admin) {
 		$page = (isset($_GET["c"]) && is_numeric($_GET["c"])) ? $_GET["c"] : 1;
 		$v = $_GET["v"];
 		$pad = 7;
 		$per = 8;
 		$total = "SELECT COUNT(*) as 'Total' FROM comments WHERE video = '$v'";
 		$rs = mysql_query($total);
 		$num = mysql_fetch_object($rs);
 		$totalpages = ceil($num->Total / $per);
 		$cURL = $_SERVER['REQUEST_URI'];
 		$explode = explode("?",$cURL);
 		$gets = explode("&",$explode[1]);
 		$start = ($page * $per) - $per;
 		$id = $_GET["v"];
                $sql = "SELECT * FROM $table WHERE video = $id ORDER BY id DESC LIMIT $start,$per";
 		$rs = mysql_query($sql);
		while($row = mysql_fetch_array($rs,MYSQL_ASSOC)) {
                         
                              echo "<div class=\"ucomment\"><div class=\"comment\">" . $row["comment"];
                              
                              echo "</div><div class=\"user\">By: " . $row["user"] . " at <span class=\"date\">" . $row["date"] . "</span></div></div>";
                         
                         }
 		print "<div>";
 		if($page != 1) {
 		
 			echo "<a href=\"" . $explode[0] . "?" . $gets[0] . "&" . $gets[1] . "&c=1\">1</a>";
 		
 		}
		if(($page - $pad) > 1) {
			
			print "...";
			$low = $page - $pad;
			for($i = $low; $i < $page; $i++) {
				
				echo "<a href=\"" . $explode[0] . "?" . $gets[0] . "&" . $gets[1] . "&c=" . $i . "\">" . $i . "</a>";
				
			} 
			
		} else {
			for($i = 2; $i < $page; $i++) {
				echo "<a href=\"" . $explode[0] . "?" . $gets[0] . "&" . $gets[1] . "&c=" . $i . "\">" . $i . "</a>";	
			}
		}
		if(($page - $pad) < 1) {
			if($totalpages != 1) {
				echo $page;
			}
			$upper = $page + $pad;
			if($totalpages < $upper) {
			
				for($i = ($page + 1); $i < $totalpages; $i++) {
					
					echo "<a href=\"" . $explode[0] . "?" . $gets[0] . "&" . $gets[1] . "&c=" . $i . "\">" . $i . "</a>";
					
				}
				
			} else {
			
				for($i = ($page + 1); $i <= $upper; $i++) {
					
					echo "<a href=\"" . $explode[0] . "?" . $gets[0] . "&" . $gets[1] . "&c=" . $i . "\">" . $i . "</a>";
					
				}
				print "..."; 
			
			}
			
		} else {
			echo $page;
			for($i = ($page + 1); $i < $totalpages; $i++) {
				echo "<a href=\"" . $explode[0] . "?" . $gets[0] . "&" . $gets[1] . "&c=" . $i . "\">" . $i . "</a>";	
			}
		}
		if($page != $totalpages) {
 		
 			echo "<a href=\"" . $explode[0] . "?" . $gets[0] . "&" . $gets[1] . "&c=$totalpages\">$totalpages</a>";
 		
 		}
		
 		print "</div>";
 		
		}	

?>