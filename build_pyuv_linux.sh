pip install -d . pyuv
tar -xzf pyuv-*.tar.gz
vagrant up
vagrant ssh x32 -c "cd /vagrant && sh -xe build_pyuv_linux_vagrant.sh"
mv pyuv-*/pyuv.cpython-33m.so pyuv-x86.so
vagrant ssh x64 -c "cd /vagrant && sh -xe build_pyuv_linux_vagrant.sh"
mv pyuv-*/pyuv.cpython-33m.so pyuv.so
