local run:
copy the contents of the build folder over to your ngix installations html folder
to serve out this static content, execute /start nginx
nginx set up to listen at the port specified in conf/nginx.conf

container run:
nginx in the container runs on port 80
src/app.js was modified to hit <docker-machine-ip>:8080 because that's where the container for the java web app will live