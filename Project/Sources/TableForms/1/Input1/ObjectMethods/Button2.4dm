$range:=WP Selection range:C1340(*; "WParea1")
$_pict:=WP Get elements:C1550($range; wk type image:K81:192)
If ($_pict.length>0)
	$pict:=$_pict[0]
	If (Shift down:C543)
		WP SET ATTRIBUTES:C1342($pict; wk image url:K81:218; "https://fr.4d.com/sites/all/themes/bactency/xxx.png")
	Else 
		WP SET ATTRIBUTES:C1342($pict; wk image url:K81:218; "https://fr.4d.com/sites/all/themes/bactency/logo.png")
	End if 
	
End if 


