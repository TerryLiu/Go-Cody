@if exist "rsrc.syso" (
    @del "rsrc.syso"
)

rsrc -manifest main.manifest -o rsrc.syso -ico master.ico,main.ico
set TAG=1.3

go build  -ldflags="-H windowsgui -s -w -X main._VERSION_ '%TAG%'" 
pause
exit

 -ldflags "-s -w"


set GOARCH=386
set GOBIN=D:\go\bin
set GOEXE=.exe
set GOHOSTARCH=386
set GOHOSTOS=windows
set GOOS=windows
set GOPATH=D:\go\gopath
set GORACE=
set GOROOT=D:\go
set GOTOOLDIR=D:\go\pkg\tool\windows_386
set GO15VENDOREXPERIMENT=
set CC=gcc
set GOGCCFLAGS=-m32 -mthreads -fmessage-length=0
set CXX=g++
set CGO_ENABLED=1