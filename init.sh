sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo gunicorn -c hello.py hello:app
sudo gunicorn -c for_django.py ask.wsgi:application
sudo /etc/init.d/gunicorn restart
sudo /etc/init.d/mysql start
sudo mysql -uroot -e "create database stepik_course;"
sudo mysql -uroot -e "grant all privileges on stepik_course.* to 'box'@'localhost' with grant option;"
sudo ~/web/ask/manage.py makemigrations
sudo ~/web/ask/manage.py migrate


#sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start
