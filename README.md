# DOCKER-UBUNTU

Docker image with a non-root user.

# User

The non-root user is named `user`. Password is not set for `user`. `user` has sudo privileges.

# Environment Variables

The following environment variables are set:

``` bash
ENV LANG=C.UTF-8
ENV USER=user
ENV HOME=/home/${USER}
```
