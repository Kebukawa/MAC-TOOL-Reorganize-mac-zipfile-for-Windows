#!/bin/sh

#入力を受付、その入力を「str」に代入
read str

#実行して結果を表示
echo
echo ---- start ----
echo $str
echo

echo ---- treat ----
command='zip --delete "'$str'" "*__MACOSX*" "*.DS_Store" "*Project/Trash*" "*userPreferences.*"'
eval $command
echo

echo ---- zipinfo ----
command='zipinfo "'$str'"'
eval $command
