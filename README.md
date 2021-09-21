# mofed-docker

This project builds the
[Mellanox OFED drivers](https://www.mellanox.com/products/infiniband-drivers/linux/mlnx_ofed)
at different driver versions, Ubuntu distributions and kernel versions and provides a
[Helm](https://helm.sh) for installing them onto nodes in a Kubernetes cluster.

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

## Deployment

The Mellanox OFED drivers can be installed on Kubernetes using the Helm chart
provided by this repository:

```sh
helm repo add mofed https://stackhpc.github.io/mofed-utils
helm upgrade -i --devel mofed-driver mofed/mofed-driver
```

This installs multiple daemonsets that target different OS distributions and
kernel versions using labels from the
[Node Feature Discovery](https://kubernetes-sigs.github.io/node-feature-discovery)
addon, which should allow for seamless operation when updating nodes in a way
that changes the operating system or kernel version (e.g. deploying new nodes
using a new image).
