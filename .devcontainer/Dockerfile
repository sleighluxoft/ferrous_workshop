# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.148.1/containers/rust/.devcontainer/base.Dockerfile

FROM mcr.microsoft.com/vscode/devcontainers/rust:0-1

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
     && apt-get -y install --no-install-recommends usbutils libudev-dev libusb-1.0-0-dev python3-pip python3-setuptools

RUN rustup +stable target add thumbv7em-none-eabihf
RUN rustup +stable component add llvm-tools-preview
RUN cargo install cargo-binutils
RUN cargo install cargo-flash --version 0.10.2 -f
RUN cargo install cargo-embed --version 0.10.1 -f
RUN cargo install cargo-binutils
RUN cargo install cargo-bloat
RUN cargo install probe-run

RUN pip3 install --upgrade pip
RUN pip3 install nrfutil