FROM gradle:jdk8-alpine
EXPOSE 9005/tcp
COPY --chown=gradle:gradle . /prior-auth/
WORKDIR /prior-auth/
RUN gradle installBootDist
CMD ["gradle", "bootRun"]
