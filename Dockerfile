FROM mysql:5.7
MAINTAINER UNB Libraries <libsupport@unb.ca>

ENV TZ America/Moncton

COPY ./conf.d /etc/mysql/conf.d

# Metadata
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL ca.unb.lib.generator="mysql" \
      com.microscaling.docker.dockerfile="/Dockerfile" \
      com.microscaling.license="MIT" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.description="mediawiki.lib.unb.ca provides database storage for Mediawiki instances at UNB Libraries." \
      org.label-schema.name="mediawiki.lib.unb.ca" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/unb-libraries/mediawiki.lib.unb.ca" \
      org.label-schema.vendor="University of New Brunswick Libraries" \
      org.label-schema.version=$VERSION
