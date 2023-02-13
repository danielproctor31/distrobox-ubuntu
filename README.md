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
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/podman
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/podman-compose
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/docker
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/flatpak
sudo ln -s /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree
```

## Verification
This image is signed with [sisgstore's cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the cosign.pub key from this repo and running the following command:

```
cosign verify --key cosign.pub ghcr.io/danielproctor31/ubuntu
```

## Private Repo Auth
If you are building images using a private repo, authentication is required.

Create a personal access token with `read:packages` permission: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token

Login with podman:
```
podman login ghcr.io
```
Enter your github username and the personal access token as the password.

References:
- https://github.com/containers/image/blob/main/docs/containers-auth.json.5.md
- https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry

## Testing locally

The container can be built with Docker or Podman:
```
podman build -f Containerfile .
```
