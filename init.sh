sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo gunicorn -c hello.py hello:app
sudo gunicorn -c for_django.py ask.wsgi:application
sudo /etc/init.d/gunicorn restart

#sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start
