# mofed-docker

This project builds the Mellanox OFED drivers different driver versions,
Ubuntu distributions and kernel versions and provides a [Helm](https://helm.sh)
for installing them onto nodes in a Kubernetes cluster.

## Images

The images are made available via GitHub packages in the
[stackhpc/mofed](https://github.com/stackhpc/mofed-utils/pkgs/container/mofed)
repository with tags of the form:

```
{{ ofed_version }}-{{ distro }}-{{ kernel_version }}-amd64
```

For example:

```
ghcr.io/stackhpc/mofed:5.4-1.0.3.0-ubuntu20.04-5.4.0-81-generic-amd64
```

## Installation
