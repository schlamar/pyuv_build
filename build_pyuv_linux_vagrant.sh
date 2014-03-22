cd pyuv-*
rm -f pyuv.so
rm -rf build/
/opt/py33/bin/python3 setup.py build_ext --inplace --force --libuv-clean-compile
