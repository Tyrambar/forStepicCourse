sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update && sudo apt install python3.6
sudo rm /usr/bin/python3
sudo ln -sf /usr/bin/python3.6 /usr/bin/python3
sudo rm /usr/bin/pydoc3
sudo ln -sf /usr/bin/pydoc3.6 /usr/bin/pydoc3

wget https://bootstrap.pypa.io/ez_setup.py -O - | python3
sudo pip3 install --force-reinstall setuptools

sudo pip3 install django==2.2
sudo pip3 install gunicorn==19.5
sudo apt install sqlite3
