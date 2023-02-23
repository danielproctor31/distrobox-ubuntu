# ubuntu

Can be used with [Distrobox](https://github.com/89luca89/distrobox), [WSL](https://learn.microsoft.com/en-us/windows/wsl/). Or as a base for any other container image.

# Usage

## Distrobox
```
distrobox-create -i ghcr.io/danielproctor31/ubuntu:latest -n ubuntu
distrobox-enter ubuntu
```

Update with:
```
distrobox upgrade ubuntu
```

Application shortcuts can be exported to the host using `distrobox-export`.

Example using VSCode:
```
distrobox-export --app code
```

To run software installed on the host, use [distrbox-host-exec](https://github.com/89luca89/distrobox/blob/main/docs/usage/distrobox-host-exec.md)

example:
```
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/docker
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/docker-compose
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/flatpak
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree
```

## Verification
This image is signed with [sisgstore's cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the cosign.pub key from this repo and running the following command:

```
cosign verify --key cosign.pub ghcr.io/danielproctor31/ubuntu
```

## Testing locally

The container can be built with Docker or Podman:
```
podman build -f Containerfile .
```
