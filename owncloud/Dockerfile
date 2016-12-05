FROM fedora
MAINTAINER Dusty Mabe <dusty@dustymabe.com>

# Perform updates
RUN dnf -y update && dnf clean all

# Install owncloud owncloud-httpd owncloud-sqlite rpms
RUN dnf install -y owncloud{,-httpd,-sqlite} && dnf clean all

# Install SSL module and force SSL to be used by owncloud
RUN dnf install -y mod_ssl && dnf clean all
RUN sed -i 's/"forcessl" => false,/"forcessl" => true,/' /etc/owncloud/config.php

# Allow connections from everywhere
RUN sed -i 's/Require local/Require all granted/' /etc/httpd/conf.d/owncloud.conf
RUN sed -i "s/'trusted_domains'/#'trusted_domains'/" /etc/owncloud/config.php

# Expose port 443 and set httpd as our entrypoint
EXPOSE 443
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]

