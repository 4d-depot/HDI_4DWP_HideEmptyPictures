C_TEXT:C284($Path)
C_OBJECT:C1216($o)

If (Form:C1466.trace)
	TRACE:C157
End if 

// read current view property
$o:=WP Get view properties:C1649(*; "WP_2")

// apply the same property for export
$o:=New object:C1471("visibleEmptyImages"; $o[wk visible empty images:K81:369])  // new export option with current visibility setting

$Path:=Get 4D folder:C485(Data folder:K5:33)+"export.docx"
WP EXPORT DOCUMENT:C1337(WParea2; $path; wk docx:K81:277; $o)

OPEN URL:C673($Path)
