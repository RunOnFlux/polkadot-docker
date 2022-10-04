FROM debian:buster-slim
WORKDIR /polkadot
ARG VERSION=v0.9.29

RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/paritytech/polkadot/releases/download/${VERSION}/polkadot

COPY runpolkadot.sh .

RUN chmod 755 polkadot runpolkadot.sh

RUN mkdir /chaindata

EXPOSE 30333 9933 9944

ENTRYPOINT ["./runpolkadot.sh"]
CMD ["", ""]
