# Destiny Cards
Destiny Cards is a small hello-world-like project, with several services

# Have a taste !
You can have a first version [here](https://drkms.github.io/destiny-cards/)

# Local basic install
You can try to install it locally using the nginx file :

```destinycards.local.conf```

Add it into your nginx "sites-available" then, make a symbolic link, restart, and thats it !

# Local advanced install
You can install it locally with the python version of the API using this other nginx conf :

```api.destinycards.local.conf```

First install python3 requirements :

```pip3 install -r requirements.txt```

Add it into your nginx "sites-available" then, make a symbolic link, restart nginx, and dont forget to start python Flask API, using :

```python3 python/app.py```

# Database
You will find a database small version, just to have a complete test

You can install it with the command with defaut MySQL like this(login/pwd are just an example)

```mysql -uroot -p < db/init.sql```

... or with default MariaDB settings, like this :

```sudo mysql < db/init.sql```
