
# Target: x86_64-ruck0s-linux-gnu
# Alias: x86_64-ruck0s-linux-libc6

# Host: i686-ruck0s-linux-gnulibc1 
# Alias: i686-ruck0s-linux-libc5

sudo update-alternatives --install        \
/usr/bin/gcc gcc /usr/bin/gcc-4.8 100     \
--slave /usr/bin/g++ g++ /usr/bin/g++-4.8

sudo update-alternatives --install        \
/usr/bin/gcc gcc /usr/bin/gcc-4.9 50      \
--slave /usr/bin/g++ g++ /usr/bin/g++-4.9 

sudo update-alternatives --config gcc

p=x86_64-w64-mingw32

alternatives --install     \
 /usr/bin/gcc.exe gcc /usr/bin/$p-gcc.exe 0 \
--slave /usr/bin/ar.exe ar /usr/bin/$p-ar.exe

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.4 40   
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.1 30
sudo update-alternatives --config gcc

update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.4 40     
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.1 30    
update-alternatives --config g++

update-alternatives --install /usr/bin/$p-gcc $p-gcc \
/usr/bin/$p-gcc-4.4 40  

update-alternatives --install /usr/bin/i486-linux-gnu-gcc i486-linux-gnu-gcc \
/usr/bin/i486-linux-gnu-gcc-4.1 30  

update-alternatives --config i486-linux-gnu-gcc

update-alternatives --install /usr/bin/i486-linux-gnu-g++ i486-linux-gnu-g++ \
/usr/bin/i486-linux-gnu-g++-4.4 40  

update-alternatives --install /usr/bin/i486-linux-gnu-g++ \
i486-linux-gnu-g++ \
/usr/bin/i486-linux-gnu-g++-4.1 30  

update-alternatives --config i486-linux-gnu-g++

--host=$p --build=$p
--------------------------
