FROM node:10-slim

LABEL version="1.0.0"
LABEL repository="http://github.com/electricg/merge-release"
LABEL homepage="http://github.com/electricg/merge-release"
LABEL maintainer="electric_g <electric.g@gmail.com>"

LABEL com.github.actions.name="Automated releases for npm packages."
LABEL com.github.actions.description="Release npm package based on commit metadata."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md /

RUN apt-get update
RUN apt-get -y install git

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

