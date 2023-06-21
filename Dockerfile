FROM golang:1.20

RUN apt update
RUN apt upgrade
RUN apt install -y uuid qemu-system-x86 qemu-utils git swtpm gettext mtools syslinux isolinux gcc-arm-none-eabi git make gcc liblzma-dev mkisofs xorriso jq docker
