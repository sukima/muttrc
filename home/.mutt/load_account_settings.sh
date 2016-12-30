#!/bin/bash

DIR=~/.secure/mutt_account.d
pushd $DIR >/dev/null

echo "Load which mutt account: (CTRL-C to cancel)" 1>&2

select file in *; do
  popd >/dev/null
  if [[ $file == *.gpg ]]; then
    exec gpg --use-agent --no-tty -q -d "${DIR}/${file}"
  else
    exec cat "$DIR/${file}"
  fi
done
