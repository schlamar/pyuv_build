pip install -d . pyuv
tar -xzf pyuv-*.tar.gz
cd pyuv-*
rm -f deps/libuv/libuv.a
rm pyuv.so
python3 setup.py build_ext --inplace --force
