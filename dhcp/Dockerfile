# Use an official Ubuntu base image
FROM ubuntu:latest

# Install isc-dhcp-server
RUN apt-get update && apt-get install -y isc-dhcp-server && rm -rf /var/lib/apt/lists/*

# Ensure the DHCP leases file exists
RUN touch /var/lib/dhcp/dhcpd.leases

# Copy the DHCP server configuration file from the host to the container
COPY dhcpd.conf /etc/dhcp/dhcpd.conf

# Set the entrypoint to run the DHCP server
ENTRYPOINT ["/usr/sbin/dhcpd", "-d", "-f", "--no-pid"]

# Expose DHCP standard ports
EXPOSE 67/udp 67/tcp
