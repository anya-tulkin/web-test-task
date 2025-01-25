FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

WORKDIR /usr/share/nginx/html/
COPY index.html .
COPY css ./css
COPY font ./font
COPY img ./img

ENTRYPOINT ["nginx", "-g", "daemon off;"]