# In this web stack debugging task, we are testing how well our web server setup featuring Nginx is doing under pressure
# and it turns out it’s not doing well: we are getting a huge amount of failed requests

exec {'replace':
  provider => shell,
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  before   => Exec['restart'],
}

exec {'restart':
  provider => shell,
  command  => 'sudo service nginx restart',
}
