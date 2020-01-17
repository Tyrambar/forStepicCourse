sudo apt update
sudo apt install python3.6
sudo apt install python3.6-dev
sudo unlink /usr/bin/python3
sudo ln -sf /usr/bin/python3.6 /usr/bin/python3

sudo wget https://bootstrap.pypa.io/ez_setup.py -O - | python3
sudo pip3 install --force-reinstall setuptools

sudo pip3 install django==2.1
sudo pip3 install gunicorn==19.5
sudo pip3 install mysqlclient==1.3.8
#sudo apt install sqlite3

#sudo apt install python-pip python-dev mysql-server libmysqlclient-dev
#sudo apt install python3-dev

#https://github.com/Tyrambar/forStepicCourse.git
#INSTALLED_APPS = ['ask', 'qa', ..]

#sudo ln -sf /home/box/web/etc/django_conf.py /etc/gunicorn.d/django_conf.py
#sudo gunicorn -c /etc/gunicorn.d/django_conf.py ask.wsgi:application
