#!/bin/bash

exec gpg --use-agent --no-tty -q -d ~/.secure/mutt_account.gpg
