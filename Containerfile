ARG VERSION=jammy

FROM docker.io/library/ubuntu:${VERSION}

LABEL com.github.containers.toolbox="true" \
      name="ubuntu" \
      version="jammy" \
      usage="For use with distrobox" \
      summary="Customized image for Ubuntu in Distrobox" \
      maintainer="dan@danielproctor.dev"

COPY files/tmp /tmp

# install packages
RUN apt-get update -y && \
    apt-get upgrade -y && \
    grep -v '^#' /tmp/packages | xargs apt-get install -y && \
    apt-get autoremove -y  && \
    apt-get clean -y

# setup host-exec
RUN chmod u+x /tmp/host-exec.sh
RUN /tmp/host-exec.sh

# cleanup
RUN rm -rf /tmp/*