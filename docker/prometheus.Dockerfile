FROM prom/prometheus:latest

# Copy the Prometheus configuration file
COPY ./docker/prometheus.yml /etc/prometheus/prometheus.yml

# Expose the port for Prometheus
EXPOSE 9090

# Set the entrypoint
ENTRYPOINT ["/bin/prometheus"]

# Set the command to use the custom configuration file
CMD ["--config.file=/etc/prometheus/prometheus.yml"]