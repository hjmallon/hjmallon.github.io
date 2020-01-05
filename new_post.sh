#! /usr/bin/env bash
set -x -e

# ---
# layout: post
# title:  "Welcome to Jekyll!"
# date:   2020-01-05 09:47:09 +0000
# categories: jekyll update
# ---
DIR=$(dirname "$(basename "$0")")

NAME="$1"
NAME_LOWER_HYPHEN=$(echo "$NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

DATE_EPOCH=$(date  "+%s")
DATE_SHORT=$(date -r "$DATE_EPOCH" "+%Y-%m-%d")
DATE_LONG=$(date -r "$DATE_EPOCH" "+%Y-%m-%d %H:%M:%S %z")

FPATH="$DIR/_posts/$DATE_SHORT-$NAME_LOWER_HYPHEN.md"

{ echo "---";
  echo "layout: post";
  echo "title:  \"$NAME\"";
  echo "date: $DATE_LONG";
  echo "categories: jekyll update";
  echo "---"; } > "$FPATH"
