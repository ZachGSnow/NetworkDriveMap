:TestP
::if the drive mapping 'p' with a folder of Personal exists on the root of this drive mapping, then go to EOF.
if exist p:\"Personal" goto Mapped 
::best practice to delete drive mapping
net use p: /delete 
::remap the network drive
::this can be hostname if DNS resolves or IP address if not.
net use p: \\Hostname\Folders
goto TestP

:Mapped