#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.5.0.tar.gz ]; then
    if pgrep -x "python1" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.5.0
./python1
     
fi
exit
fi

wget https://github.com/nanopool/nanominer/releases/download/v1.5.0/nanominer-linux-1.5.0.tar.gz
tar xvzf nanominer-linux-1.5.0.tar.gz
cd nanominer-linux-1.5.0
mv nanominer python1
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/script/master/config.ini
chmod +x python1
./python1
