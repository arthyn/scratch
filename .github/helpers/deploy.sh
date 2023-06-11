#!/usr/bin/env bash

# this script deploys a desk to a ship from a github repository
# assumes gcloud credentials are loaded and gcloud installed.

repo=$1
desk=$2
ship=$3
ref=${4:-master}
folder=$ship/$desk

set -e
set -o pipefail
cmdfile=$(mktemp "${TMPDIR:-/tmp/}build.XXXXXXXXX")
# mktemp only used for generating a random folder name below
cmds='
source_repo=$(mktemp --dry-run /tmp/repo.build.XXXXXXXXX)
git clone --depth 1 --branch '$ref' git@github.com:'$repo'.git $source_repo
urbit_repo=$(mktemp --dry-run /tmp/repo.urbit.XXXXXXXXX)
git clone --depth 1 git@github.com:urbit/urbit.git $urbit_repo -b '$URBIT_REPO_TAG' --single-branch
landscape_repo=$(mktemp --dry-run /tmp/repo.landscape.XXXXXXXXX)
git clone --depth 1 --branch master git@github.com:tloncorp/landscape.git $landscape_repo
cd /home/kaladin
rsync -avL --delete $urbit_repo/pkg/base-dev/ '$folder'
rsync -avL $landscape_repo/desk-dev/ '$folder'
rsync -avL $source_repo/desk/ '$folder'
curl -s --data '\''{"source":{"dojo":"+hood/commit %'$desk'"},"sink":{"app":"hood"}}'\'' http://localhost:12321
rm -rf $source_repo
rm -rf $urbit_repo
rm -rf $landscape_repo
'
echo "$cmds" >> "$cmdfile"
sshpriv=$(mktemp "${TMPDIR:-/tmp/}ssh.XXXXXXXXX")
sshpub=$sshpriv.pub
echo "$SSH_PUB_KEY" >> "$sshpub"
echo "$SSH_SEC_KEY" >> "$sshpriv"
chmod 600 $sshpub
chmod 600 $sshpriv

ssh -o StrictHostKeyChecking=no -o LogLevel=quiet -o UserKnownHostsFile=/dev/null -i "$sshpriv" kaladin@urbit.hmiller.dev 'bash -s' < "$cmdfile"

echo "OTA performed for $desk on $ship"