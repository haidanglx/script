#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.4.1.tar.gz ]; then
    if pgrep -x "python8" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.4.1
tmux new-session -d -s my_session1 './python8'
     
fi
exit
fi

wget https://github.com/nanopool/nanominer/releases/download/v1.4.1/nanominer-linux-1.4.1.tar.gz
tar xvzf nanominer-linux-1.4.1.tar.gz
cd nanominer-linux-1.4.1
mv nanominer python8
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/script/master/config.ini
chmod +x python8
tmux new-session -d -s my_session1 './python8'
