## Dockerfile
FROM ubuntu:16.04
MAINTAINER Amanda Cooksey	
LABEL Description="parse_interproscan_xml"

# Install all the updates and download dependencies
RUN apt-get update && apt-get install -y git

# ADD the cyverse_parse_ips_xml.pl
ADD parse_interproscan_xml.pl /usr/bin

# Change the permissions and the path for the script
RUN chmod +x /usr/bin/parse_interproscan_xml.pl

# Entrypoint
ENTRYPOINT ["/usr/bin/parse_interproscan_xml.pl"]

RUN mkdir /work-dir

WORKDIR  /work-dir

