#!/bin/sh
echo -ne '\033c\033]0;Fly in the spider Web\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Fly in the spider web.x86_64" "$@"
