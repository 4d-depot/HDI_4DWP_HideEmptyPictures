//%attributes = {}
#DECLARE($id : Integer)->$picture : Picture


If (Count parameters:C259<1)  // debug
	$id:=8
End if 

var $files : Collection
$files:=Folder:C1567(Folder:C1567(fk resources folder:K87:11).path+"Samples"; fk posix path:K87:1).files(fk ignore invisible:K87:22).orderBy("fullName")

If ($id<=($files.length))
	
	READ PICTURE FILE:C678($files[$id-1].platformPath; $picture)
	
End if 



