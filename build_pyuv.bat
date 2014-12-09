pip install -d . pyuv
tar -xzf pyuv-*.tar.gz
cd pyuv-*

set DISTUTILS_USE_SDK=1

call "C:\Program Files\Microsoft SDKs\Windows\v7.0\Bin\SetEnv.cmd" /release /x86
echo "Building 2.7 x86"
py -2.7-32 setup.py build_ext --libuv-clean-compile bdist_wheel
mv pyuv.pyd pyuv-x86.pyd

call "C:\Program Files\Microsoft SDKs\Windows\v7.0\Bin\SetEnv.cmd" /release /x64
echo "Building 2.7 x64"
py -2.7 setup.py build_ext --libuv-clean-compile bdist_wheel

call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /release /x86
echo "Building 3.3 x86"
py -3.3-32 setup.py build_ext --libuv-clean-compile bdist_wheel
mv pyuv.pyd pyuv-x86.pyd

call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /release /x86
echo "Building 3.4 x86"
py -3.4-32 setup.py build_ext bdist_wheel
mv pyuv.pyd pyuv-x86.pyd

call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /release /x64
echo "Building 3.3 x64"
py -3.3 setup.py build_ext --libuv-clean-compile bdist_wheel

call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /release /x64
echo "Building 3.4 x64"
py -3.4 setup.py build_ext bdist_wheel
