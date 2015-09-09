#
# Vert.x Dockerfile
#

# Pull base image.
FROM nubomedia/openxsp

MAINTAINER Nubomedia

WORKDIR /root

# Add app
ADD demo-app /root/signaling-plane/modules/demo-app
ADD demo-app.run /root/

# Expose
EXPOSE 8080

# Run
CMD ["/root/demo-app.run"]
