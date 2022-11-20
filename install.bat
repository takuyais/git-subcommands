@rem Need to run as Administrator
@setlocal

set "BIN_DIR=C:\msys64\home\%USERNAME%\.local\bin"

@set script_root=%~dp0

mkdir "%BIN_DIR%" 2>nul
cd /d "%BIN_DIR%"
mklink git-blames "%script_root%git-blames"
mklink git-fuzzy-find "%script_root%git-fuzzy-find"
mklink git-fuzzy-show "%script_root%git-fuzzy-show"
mklink git-ls-tracked "%script_root%git-ls-tracked"
mklink git-squash "%script_root%git-squash"
mklink git-synch-branch "%script_root%git-synch-branch"

@endlocal
@pause
