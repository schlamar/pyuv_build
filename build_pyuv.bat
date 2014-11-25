pip install -d . pyuv
tar -xzf pyuv-*.tar.gz
cd pyuv-*

call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /release /x86
echo "Building x86"
py -3.3-32 setup.py build_ext --inplace --libuv-clean-compile
mv pyuv.pyd pyuv-x86.pyd

call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /release /x64
echo "Building x64"
py -3.3 setup.py build_ext --inplace --libuv-clean-compile
