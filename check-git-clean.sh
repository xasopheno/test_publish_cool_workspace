  #!/usr/bin/env bash

  set -euxo pipefail
  if [[ `git status --porcelain` ]]; then
    echo "git directory is not clean"
    exit 0
  fi
