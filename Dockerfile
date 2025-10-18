FROM nginx:alpine

# Copy assets
COPY assets /usr/share/nginx/html/assets

# Copy index.html
COPY index.html /usr/share/nginx/html/

# Expose port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]