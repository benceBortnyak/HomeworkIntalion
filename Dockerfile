#imoprt tomcat from dockerhub
FROM tomee:latest

#install the nessecary packages
RUN apt-get update \
    && apt install -y apache2 \
    && apt install -y ufw \
    && apt install -y cron \
    && apt install -y nano \
    && mkdir /home/config 

#copy files into the container
ADD /config/hello-world.war /usr/local/tomee/webapps/ 
ADD /config/webapp1.conf /etc/apache2/sites-available/000-default.conf
ADD /config/hello-world.key /etc/ssl/certs/
ADD /config/hello-world.crt /etc/ssl/certs/


#runn config commands 
RUN a2enmod proxy \
    && a2enmod proxy_http \
    && a2enmod ssl 

#run the app and stuff
CMD /etc/init.d/apache2 start && catalina.sh run