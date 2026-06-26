!# /bin/bash

cd ~/klipper
cp .config.ebb36 .config && \
make && \
cp out/klipper.bin ebb36.bin

cp .config.eddy .config && \
make && \
cp out/klipper.bin eddy.bin

cp .config.M8P .config && \
make && \
cp out/klipper.bin m8p.bin

cd ~/katapult/scripts

python3 flish_can.py -i can0 -f ~/klipper/ebb36.bin -u edde08b84f69
python3 flish_can.py -i can0 -f ~/klipper/eddy.bin -u 5bd5e9bb2886

#python3 flish_can.py -i can0 -f ~/klipper/m8p.bin -u

