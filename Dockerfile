FROM centos
RUN yum install -y git  \
       httpd  \
       tigervnc* \
       wget

CMD ["echo","Hello Dockerfile through jenkins"]
CMD ["/bin/bash"]


