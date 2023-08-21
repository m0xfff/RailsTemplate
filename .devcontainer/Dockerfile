FROM mcr.microsoft.com/devcontainers/ruby:2.7

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential cmake default-libmysqlclient-dev default-mysql-client wait-for-it

# [Optional] Uncomment this line to install additional gems.
RUN su vscode -c "gem install bundler -v 1.17.3 && gem install foreman" 2>&1

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1

RUN rm -rf /var/lib/apt/lists/*