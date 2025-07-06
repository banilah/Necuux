FROM debian:bullseye-slim

RUN apt update && apt install -y curl
RUN curl -s https://cli.nexus.xyz | sh

ENTRYPOINT ["nexus-network", "start", "--node-id", "13063772"]
