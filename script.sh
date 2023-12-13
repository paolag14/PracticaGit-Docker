if [ $(sudo docker container list -a | grep httpd | wc -l ) -gt 0 ]; then
    sudo docker container restart $(sudo docker container list -a | grep
httpd | grep -Eo '^[^ ]+')
else
    sudo docker build -t my-web-page .
    sudo docker run -d -p 8081:80 -v
"$(pwd)/public-html/:/usr/local/apache2/htdocs" my-web-page
fi
