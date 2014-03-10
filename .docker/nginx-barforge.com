server {
  listen 8001;
  root /var/www/barforge.com/_site;
  index index.html;

  server_name localhost;

  location / {
    try_files $uri $uri/ /index.html;
  }
}
