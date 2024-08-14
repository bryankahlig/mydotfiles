Import-Module posh-git
Set-Alias -Name ll -Value ls
Set-Alias -Name l -Value ls

Function VS2015 {
    start 'C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe';
}

Function VS2017 {
    start 'C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\IDE\devenv.exe'
}
Function VS2019 {
    start 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\Common7\IDE\devenv.exe'
}
Function VS2022 {
    start 'C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\devenv.exe'
}

Set-Alias -Name vs15 -Value VS2015
Set-Alias -Name vs17 -Value VS2017
Set-Alias -Name vs19 -Value VS2019
Set-Alias -Name vs22 -Value VS2022