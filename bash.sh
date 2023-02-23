
#sudo du -h /home/forescout/capture.pcap
sudo du -h /home/forescout/capture.pcap

#sudo rm /home/forescout/capture.pcap
sudo rm /home/forescout/capture.pcap

#To start tcpreplay, you can use the following command:
sudo -u forescout /opt/tcpreplay/bin/tcpreplay --loop=0 --intf=replay /home/forescout/capture.pcap > /dev/null 2>&1 &


#To stop tcpreplay, you can use the following command
sudo killall -q tcpreplay

#To restart tcpreplay, you can use the following commands:
sudo killall -q tcpreplay
sudo -u forescout /opt/tcpreplay/bin/tcpreplay --loop=0 --intf=replay /home/forescout/capture.pcap > /dev/null 2>&1 &
