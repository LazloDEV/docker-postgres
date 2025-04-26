# Use the official Postgres image as the base
FROM postgres:17.4

# Set environment variables (optional, helpful)
ENV POSTGRES_USER=admin
ENV POSTGRES_DB=login_db

# Copy custom initialization scripts
COPY ./volumes/initdb/init.sql /docker-entrypoint-initdb.d/

# Optionally expose the port (Postgres default)
EXPOSE 5432
