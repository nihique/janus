@echo off

set CWD=%CD%

echo Deleting old symbolic links...
del %USERPROFILE%\.vimrc
del %USERPROFILE%\.gvimrc
del %USERPROFILE%\_vimrc
del %USERPROFILE%\_gvimrc
del %USERPROFILE%\_vimrc.local.before
del %USERPROFILE%\_vimrc.local.after
del %USERPROFILE%\_gvimrc.local.before
del %USERPROFILE%\_gvimrc.local.after
del %USERPROFILE%\.NERDTreeBookmarks
del %USERPROFILE%\vimfiles\colors\molokai-martin.vim
del %USERPROFILE%\vimfiles\colors\molokai-martin-mac.vim
echo Done

echo Creating new symbolic links...
mklink %USERPROFILE%\_vimrc                                 %CWD%\vimrc
mklink %USERPROFILE%\_gvimrc                                %CWD%\gvimrc
mklink %USERPROFILE%\_vimrc.local.before                    %CWD%\martin\vimrc.local.before
mklink %USERPROFILE%\_vimrc.local.after                     %CWD%\martin\vimrc.local.after
mklink %USERPROFILE%\_gvimrc.local.before                   %CWD%\martin\gvimrc.local.before
mklink %USERPROFILE%\_gvimrc.local.after                    %CWD%\martin\gvimrc.local.after
mklink %USERPROFILE%\.NERDTreeBookmarks                     %CWD%\martin\NERDTreeBookmarks
mklink %USERPROFILE%\vimfiles\colors\molokai-martin.vim     %CWD%\martin\molokai-martin.vim
mklink %USERPROFILE%\vimfiles\colors\molokai-martin-mac.vim %CWD%\martin\molokai-martin-mac.vim
echo Done
