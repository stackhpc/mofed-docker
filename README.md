# mofed-docker

This project builds the Mellanox OFED drivers different driver versions,
Ubuntu distributions and kernel versions.

The images are made available via GitHub packages with tags of the form:

```
ghcr.io/stackhpc/mofed-{{ ofed_version }}-{{ kernel_version }}:{{ distro }}-amd64
```

For example:

```
ghcr.io/stackhpc/mofed-5.4-1.0.3.0-5.4.0-81-generic:ubuntu20.04-amd64
```

These images are suitable for use with the
[Mellanox network-operator](https://github.com/Mellanox/network-operator)
using the values:

```yaml
ofedDriver:
  repository: ghcr.io/stackhpc
  image: mofed
  # This should be of the form {ofed_version}-{kernel_version}
  version: 5.4-1.0.3.0-5.4.0-81-generic
```
