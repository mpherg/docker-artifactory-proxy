FROM       jfrog-docker-reg2.bintray.io/jfrog/artifactory-pro:4.3.2
MAINTAINER Michael Ferguson <mpherg@gmail.com>

# Configures HTTP (port 80) proxying to Artifactory, and also eliminates
# the application name from the end of the URL (i.e.,
# http://localhost/artifactory becomes http://localhost). Instructions
# found at
# https://www.jfrog.com/confluence/display/RTF/Apache+HTTP+Server.

RUN                                                                           \
  yum install -y httpd &&                                                     \
  yum clean all

COPY httpd.conf /etc/httpd/conf/
COPY runArtifactory.sh /tmp/

EXPOSE 80
