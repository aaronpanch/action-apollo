FROM node:12-slim

# Install git dependency
RUN apt-get update && apt-get install git -y

# Install apollo globally
RUN yarn global add apollo@2.17.4

ADD "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
