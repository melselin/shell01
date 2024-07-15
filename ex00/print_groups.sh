FT_USER=$1
groupes="$FT_USER"
while IFS=, read -r group; do
  if [[ $group != $FT_USER ]]; then
    groupes="$groupes,$group"
  fi
done < <(groups $FT_USER)
echo $groupes
