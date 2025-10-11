FROM scratch AS ctx
COPY --chmod=755 script.sh /

# Base Image
FROM quay.io/fedora/fedora-bootc:latest
#FROM quay.io/centos/centos:latest
#FROM quay.io/almalinuxorg/almalinux-bootc:latest

### MODIFICATIONS
## make modifications desired in your image and install packages by modifying the build.sh script
## the following RUN directive does all the things required to run "build.sh" as recommended.

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache \
    --mount=type=cache,dst=/var/log \
    --mount=type=tmpfs,dst=/tmp \
    /ctx/script.sh

### LINTING
## Verify final image and contents are correct.
RUN bootc container lint
