# Shell scripts from https://github.com/lpender/shell_scripts

function git-pr-for {
  # Todo: make fetching/setup optional
  git fetch origin
  # Git all of the branches for PRs that have this SHA
  git describe --all $1 | \
  # Strip everythin but the number
  sed 's|.*pull\/\([0-9]\{1,4\}\).*|\1|' | \
  tail -n1 | \
  # Todo: make the URL customizable
  # Pass the number into a URL
  xargs -I % open https://github.com/skilledup/skilledup-academy/pull/%
}

function setup-git-pr-for {
  git config --add remote.origin.fetch +refs/pull/*/head:refs/remotes/origin/pull/*
  git fetch origin
}

#end shell scripts
