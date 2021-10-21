# wordpress-local-dev-docker

Everything you need for local wordpress development setup using [Docker "Dev Environments Preview"](https://docs.docker.com/desktop/dev-environments/). The intention of this project is to quickly set up a local Wordpress development environment. I was motivated by the preview of Docker Desktop Dev Environments. Inspiration also came from [LocalWP](https://localwp.com/) and [DevKinsta](https://kinsta.com/devkinsta)

## Images
- [wordpress:latest](https://hub.docker.com/_/wordpress/)
- [wordpress:cli](https://hub.docker.com/_/wordpress/)
- [jwilder/nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy)
- mysql:5.7

## Supports
- Virtual Hosts
- SSL
- wp-cli

## Prerequisites
Dev Environments are available as part of Docker Desktop 3.5.0 release. Download and install Docker Desktop 3.5.0 or higher:

- [Mac](https://docs.docker.com/desktop/mac/release-notes/)
- [Windows](https://docs.docker.com/desktop/windows/release-notes/)

To get started with Dev Environments, you must have the following tools and extension installed on your machine:

- [Git](https://git-scm.com)
- [Visual Studio Code](https://code.visualstudio.com)
- [Visual Studio Code Remote Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Installation
### 1. Clone Repo

Note: This is important. Loading the repo directly in Docker Desktop will clone use virtual volume and make the `src` files unavailable on your host filesystem.

```
git clone https://github.com/jeffhigham-f3/wordpress-local-dev-docker.git
```

### 2. Create New Environment
- Open Docker Desktop
- Under Dev Environments [Preview] -> Create New Environment
- Choose source "Local Directory"
- Browse to cloned repo directory

### 3. Complete Wordpress Install
Open your browser and navigate to:
```
http://localhost/wp-admin/install.php 
```

### Open In Your Favorite Editor
- Browse to the cloned repo directory from step 1.
- Wordpress files are  in `/src`
- MySQL is available on `localhost:3306`
- MySQL Root Pass: changeme

```
LICENSE
README.md
certs/
cli/
scripts/
server/
src/

```

Important Note: After installation opening files in VSCode directly from Docker Desktop restarts the container and breaks the hosting setup. For now only use Docker Desktop for installation, start, and stop. I plan to make an update once Docker Dev Environments is out of preview and ready for release.
