FROM golang:1.22

# Enable backports repo for debian for swtpm
RUN . /etc/os-release && echo "deb http://deb.debian.org/debian $VERSION_CODENAME-backports main contrib non-free" > /etc/apt/sources.list.d/backports.list
RUN apt update
RUN apt upgrade
RUN apt install -y uuid qemu-system-x86 qemu-utils git swtpm gettext mtools isolinux gcc-arm-none-eabi git make gcc liblzma-dev mkisofs xorriso jq docker
