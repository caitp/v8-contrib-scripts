#!/usr/bin/env bash

orig_pwd="$(pwd)"
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
destination=
help=0

while [ $# -gt 0 ]; do
  case "$1" in
    -h) help=1;;
    --help) help=1;;
    *) destination="$1";;
  esac
  shift
done

if [ $help = 1 ]; then
  echo "Usage:"
  echo "  ./install.sh [OPTIONS] <destination>"
  echo "    <destination> is the location you'd like to copy scripts to. Typically, the same"
  echo "    directory in which depot_tools are installed in."
  echo ""
  echo "  OPTIONs may be any of:"
  echo "    -h | --help         ... Print help message"
  cd "$orig_pwd"
  exit 0
fi

if [ "z$destination" = "z"  ]; then
  echo "Missing destination directory, please pass a directory name to the install script."
  cd "$orig_pwd"
  exit 1
fi

cp -f "$script_dir/scripts/rebase-v8" "$destination/rebase-v8"
cp -f "$script_dir/scripts/newpatch-v8" "$destination/newpatch-v8"
chmod +x "$destination/rebase-v8"
chmod +x "$destination/newpatch-v8"

echo "Finished! Run 'rebase-v8' to update the master branch and rebase against it, or"
echo "              'newpatch-v8' to create a new feature branch"

cd "$orig_pwd"
exit 0
