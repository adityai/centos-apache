FROM centos
MAINTAINER adityaii@gmail.com
RUN yum update -y && yum install httpd git -y
RUN mkdir /var/www/html/maven_central -p
RUN git clone https://github.com/adityai/Apaxy && mv Apaxy/* /var/www/html/maven_central/
#CMD["service start httpd"]

