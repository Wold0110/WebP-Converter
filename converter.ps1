$pictures = Get-ChildItem -Path /img -Exclude place.holder,*.webp,*.svg -File -Recurse
foreach($pic in $pictures){
    $relative = $([System.IO.Path]::GetRelativePath(".",$pic))
    $webp = $([System.IO.Path]::ChangeExtension($pic,".webp"))
    /webp/cwebp $relative -o $webp
    remove-item $relative
	#write-host "from" $relative "to" $webp
}