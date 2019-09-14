server {
        listen 80;
        listen [::]:80;

        root /home/brenden/www/main;

        index index.html index.htm index.nginx-debian.html ;

        server_name brenden5610.com www.brenden5610.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
