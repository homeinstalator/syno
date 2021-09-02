#/bin/bash
PACKAGES=(PhotoStation)
ARCH=(bromolow monaco)

for pkg in ${PACKAGES[@]}; do
  for arch in ${ARCH[@]}; do
    if [ -n "$str" ]; then
      str="$str,*$pkg*$arch*"
    else
      str="*$pkg*$arch*"
    fi
  done
done

wget --execute="robots = off" --mirror --convert-links --no-parent --accept $str https://archive.synology.com/download/Package/spk
