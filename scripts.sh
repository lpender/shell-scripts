# Shell scripts from https://github.com/lpender/shell_scripts

function get_pr_for {
  # Todo: make fetching/setup optional
  git fetch origin
  git log --pretty=%d $1..origin | \
  while read line; do
    if [ ${#line} -gt 0 ]
    then
      local LASTLINE="${line}"
    fi
  done < /dev/stdin;
  echo $LASTLINE | sed 's|[^0-9]*\([0-9]*\)[^0-9]*|\1|' | \
  # Todo: make this customizable
  xargs -I % open https://github.com/skilledup/skilledup-academy/pull/%
}

# This works for certain type
function pr_for_sha {
  git log --merges --ancestry-path --oneline $1..origin | grep 'pull request' | tail -n1 | awk '{print $5}' | cut -c2- | xargs -I % open https://github.com/skilledup/skilledup-academy/pull/%
}

function setup_get_pr_for {
  git config --add remote.origin.fetch +refs/pull/*/head:refs/remotes/origin/pull/*
  git fetch origin
}

#end shell scripts
