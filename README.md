# ubuntu

A custom ubuntu based container with my preference of software preinstalled to be used with [Distrobox](https://github.com/89luca89/distrobox).

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

Packages can be added/removed by updating the file `files/tmp/packages`.


## distrbox-host-exec

[distrbox-host-exec](https://github.com/89luca89/distrobox/blob/main/docs/usage/distrobox-host-exec.md) allows software on the host to be called from distrobox. Update `files/tmp/commands` to add/remove as needed.

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
