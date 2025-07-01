#!/usr/bin/env bash
google=$(ping -c 10 -q www.google.com)
facebook=$(ping -c 10 -q www.facebook.com)
spotify=$(ping -c 10 -q open.spotify.com)
steam=$(ping -c 10 -q store.steampowered.com)
str1=$'\n--- Ping Test ---\nTest date: '
str2=$'Machine: '
str3=$'Operating System: '
str4=$'User: '
nl=$'\n'
cur_date=$(date)
echo "$str1$cur_date$nl$str2$MACHTYPE$nl$str3$OSTYPE$nl$str4$USER$nl$google$facebook$spotify$steam" > ping.txt
cat ping.txt
