#
# Vert.x Dockerfile
#

# Pull base image.
FROM flaviomu/nubomedia-signaling-plane:v1

MAINTAINER Nubomedia

WORKDIR /opt

# Add app
ADD demo-app /opt/signaling-plane/modules/demo-app
ADD demo-app.run /opt/signaling-plane/modules/demo-app/

# Expose
EXPOSE 8080

# Run
CMD ["/opt/signaling-plane/modules/demo-app/demo-app.run"]
