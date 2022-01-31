FROM node:12-alpine

# Create work directory
RUN mkdir -p /express
WORKDIR /express

# Bundle app sources
COPY . .

# Build app
RUN yarn install --prod --frozen-lockfile && yarn run build

EXPOSE 3000

# Set default NODE_ENV to production
ENV NODE_ENV production
ENTRYPOINT [ "yarn", "start" ]