FROM node:12-slim

LABEL version="2.16.3"
LABEL repository="https://github.com/aaronpanch/action-apollo"
LABEL homepage="https://github.com/aaronpanch/action-apollo"
LABEL maintainer="Aaron Panchal <aaron.panchal@gmail.com>"

LABEL "com.github.actions.name"="GitHub Action for Apollo GraphQL"
LABEL "com.github.actions.description"="Wraps the Apollo CLI"
LABEL "com.github.actions.icon"="moon"
LABEL "com.github.actions.color"="purple"

# Install git dependency
RUN apt-get update && apt-get install git -y

# Install apollo globally
RUN yarn global add apollo@2.16.3

ADD "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
