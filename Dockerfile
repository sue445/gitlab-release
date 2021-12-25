FROM python:3.6-alpine

RUN apk --no-cache add curl cargo
RUN cargo install git-cliff

RUN pip install --no-cache-dir requests

COPY gitlab-release /usr/bin/

CMD ["/usr/bin/gitlab-release", "--help"]
