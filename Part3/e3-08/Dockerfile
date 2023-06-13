FROM node:16-alpine as build-stage
RUN apk update && apk add git && git clone https://github.com/docker-hy/material-applications.git && cd /material-applications/example-frontend && npm install && REACT_APP_BACKEND_URL=http://localhost:8080/ npm run build

FROM node:16-alpine
COPY --from=build-stage /material-applications/example-frontend/build /build
EXPOSE 5000
RUN npm install -g serve
CMD serve -s -l 5000 build