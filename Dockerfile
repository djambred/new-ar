# Gunakan image nginx untuk serve static files
FROM nginx:alpine


# Hapus default config dan copy project ke html folder
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html


# Expose port
EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]