FROM ubuntu:18.04

CMD  sudo apt install python3-pip

CMD  sudo docker cp /home/ubuntu/test.py /home/ubuntu/test.py

CMD  sudo docker cp /home/ubuntu/cp.py /home/ubuntu/cp.py 

