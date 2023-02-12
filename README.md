# distrobox-ubuntu

https://github.com/89luca89/distrobox

# Usage
```
distrobox-create -i ghcr.io/danielproctor31/distrobox-ubuntu:latest -n ubuntu
distrobox-enter ubuntu
```

Update with:
```
distrobox upgrade ubuntu
```

Application shortcuts can be exported to the host using:

```
distrobox-export --app {appName}
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
