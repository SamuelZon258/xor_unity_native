mkdir build_win32 & pushd build_win32 
cmake -A Win32 -G "Visual Studio 16 2019"  ..  &&  cmake --build . --config Release
cd ..
mkdir output\x86
copy /Y build_win32\Release\kernal.dll output\x86\kernal.dll
copy /Y build_win32\Release\kernal.lib output\x86\kernal.lib
pause
