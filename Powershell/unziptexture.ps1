#input variables
$zipInputFolder = 'C:\Users\Arvid\Downloads'
$zipOutPutFolder = 'C:\Users\Arvid\Pictures\Textures'

#start
$zipFiles = Get-ChildItem $zipInputFolder -Filter *.zip

foreach ($zipFile in $zipFiles) {

    $zipOutPutFolderExtended = $zipOutPutFolder + "\" + $zipFile.BaseName
    Expand-Archive -Path $zipFile.FullName -DestinationPath $zipOutPutFolderExtended

    }