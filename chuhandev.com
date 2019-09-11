server {
        listen 80;
        listen [::]:80;

        root /home/chuhan/www/chuhandev.com;

        index index.html;

        server_name chuhandev.com www.chuhandev.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}

