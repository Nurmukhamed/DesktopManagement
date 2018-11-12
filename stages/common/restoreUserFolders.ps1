# Borrowed this piece. Tests for 7Zip and if it exists creates an alias
if (-not (test-path "$env:ProgramFiles\7-Zip\7z.exe")) {throw "$env:ProgramFiles\7-Zip\7z.exe needed"} 
set-alias sz "$env:ProgramFiles\7-Zip\7z.exe"
$files="I:\Users"
$target="W:\Users"
$dirs = Get-ChildItem -Path $files | Where-Object { $_.Attributes -eq "Files" }

# Creates 7z files based on the parent folders name and drops it inside the archive folder
Foreach ($dir in $dirs)
{
      $name = $dir.name
      $newname = $name.ToLower() -replace(" ","")
      sz x -t7z "$target\$newname" "$files\$dir"

}