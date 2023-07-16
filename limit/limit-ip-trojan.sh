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
BZh91AY&SYe�t  C߀ }���aA
���@�����)�h�4ѲL� ��� 5OMSOS1��ѦF�@��B�b#C#4� 	D�
�D�S� 4 42it�UZ�����vx�nA�*��!Wcƛ*e��)b��tϳi5�G`������Г~u2E�" �8��� ����j��Ƨ�VC�@�0`�H�G�T�TFR��})s�c��>�DCA�� �Eb�&()+&3]�=�B���`:C^\����FٲD2�qfVn��+9g����<}��],���l�����uY+	�j'N	�Pȃ��RI�8���T���Hg2�`m Eh����B�PW��lReӸ�)h��C*Oz�͆H(�I�1K�m%M�`�����K����4:���$��� �q_�l��@$0s��}0brj0
�;����(�R1) 8��.$0hY�zS�Æ����<�LX�uh?�ܑN$c� �