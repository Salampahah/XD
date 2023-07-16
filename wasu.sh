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
BZh91AY&SY���. W��p�I�����������@      `,e��vB�w}���]�{zUb�����מ�US��h}2����nݽ�-�������]�T�6��j�_^;�歪�m&�U����YinM��i�5��^²�Nغ�E���̔]�ن��&!��S�OF��aOM4��P~�i�MOHz�2d �H	�� �	�3Ry5��4ڃjzj�� �=@ A54�Si�OP�     � =@ 	4�M �)�15?SSiM1?RoH@oT�i=FL�  �Q 	�T�DɅ<��?)=Ojm)�*3Pi�4�Hh h$H@��#M�5�%<MS�(�G��L��PF���2B��HN0�c�DD@��UN��b�~�����ߑ�?��ԁց�AJ�幥�Y�eH�,�Q��iD}���e�3����H�I�뇝� $��4	a��'����#+�^�Z����+�J�����[#S=���;� YR��
�����Z��
	��A�<͸t�*���f��m�������g7�݃��C���n��ß��)1\(���W����6ҹ8UR�[�Ρn�8�MJx�����O=���LB%.��xC11��<TkW]�Z�wΊ��So�f�-��H�>rQ{!�3�����;��Wj�_j��\У~C[5n���D��b�G/�j��(�~#ԗ�Pj�ye:�����+@a���(H( �?��*�F8[�%��ڣ�+����$�������q��TE�s��
=R��/ae�0�^2�
�9�İ8K��	E�Y��1��{g�U~�7ZB�#�p\ IB%���g��;\�YGӬ*��+�q��+l��r�����@a;E��yi}9�q��٪ȈW��s�-���5��x���Ǫ$��t����]�8�3"�1�Z�1���vM���Ɨ�#9mg�;�8*�d$��@�w��d��a���~6������4H��K����#�픳�]���N9%����TX��]YgZ��?�g� �h�/�6Ý d<(��`����{�|`Z�y"e59�Ld��<�\�@����4�"�O^�&�94�hN�n���<�2� ��8�����i��H7w|�7|�6b����A���"�e�xB��#��P� v^��-�)��A �G���,���>%pF&�3�����z�6�է�@o,b����G�>���&�R_�6����Y���΃�ö�Pz��Ƚ5�]Uܑ�xaNy6�i��_V%%3K�Gi��<��wҸ�����m�n����Ϥ<�C t���~�e�
�/o�B�	KI"9 SeQ�4]���t[)Z#���K�3���y��0[N:9���U�5L� 2��\���R���E��%k��33Y�o��J��u�`n���}t��|��D�_W|�H��09�U�R������U��t��_y�VX�*��e�s��ڶWu�*�c;�?�2;;s�I!�^r*dF�%���Z÷PXՇ�=�=R�
�p{>޼��C�)����:)o��~z�n}LТ�����oҾF�y��u�L�/�Swd�`7��$qE;��^
?B!�>'k��Q��WKD�O�e�K~WF������oԲ��=��"=@C�0A���J�emS�#���S�7�;�i�Uo�.n;l^_��)⧼��l���y8�k�ɎV�T�
�W�z!�[�d��tszKb$$1N�FT���*q�������g��$.f�����Ό�&#}@LtǸ��n6�H��A�-�&�7T�W��|"�m��6�8��h�(eK/'-��1GI�,��&j� ���N��5v����	���˔Ý��pۙ�aq3N:�Ew:�:ͧ׍.?^�f���Ӆ:���^:g�3���J�P�ޣ�@+�rN���nW�(�@D�5ZR�J�`u�s`��פ�.�9)�i�L���Y���h�
N֤��v���fٮJ�SAGU���d���5ff|)85V�R�#`	Y��5�@�����<!�ڦ���n��dq��������̩���V�	���.�g�O&���˴�n[t�g���`X�DA&z��0�a��h���]��d�����t��iV�q�D�JSß͠���`dvH��>�2��a���G>��uij�1�Mٝ�R�c�_&����X���%Z���Q�a�c�>S�w� ��@�2W��\�
��ɹ�$�k�� ��s�m�g�b�����H�i`�#����a����Ι��k����%1��y�bV;���/��^��m}��m�t�'p�?V����w/6�\Ǧ��G'��}o��c2�:���Q���ɒF�����?��]��p�SI6�x�d������fh��"�>����? ���
��T��B�A�y�A�l>�qb�e���C91���2�-�0iӦ"?Bi���\!���i�q&ƻ�);l3����2}�B1A��2C_��� M�H����#$�!�"#Ke�r�9���d�YP�	�%pI"����ռw~ۚ��l��2 ~��i���%�J݃�Qo�Vd,p*
ATF�o���޿f'xٲ�1|_%�Ϝ��j�RT���*yO���<'��]�D:WQ��O�W+����pkJI���4�ΩNh�|}�tE���2�sb�����0�Q'�Jwǁ ��W�F��-�W��ڀIv�&jk��D�;�.�~��YR�i�6�2~e{-D2����j��g�.�X\�v�#��N�)4�"~sFz���<i�r�\�yU()�g���M��c:,�2��yX+��*���h)q�@�
��J��S����jYd���=�����-��e��GY���C�Us������w��!�?�Q/�<f��p/H�!oJOc[�J32�gM�f<�Ĳ�[k��kozŴ�)(�C�������clzd���V��w���0���k=P@H"�)��P�����`@���OA^��j���ĸ`ì���\T0��L`��|�VGvG������"����+D���|M��
H�'/���s�X���My#�� �����2@w&�V]�e�z�'���i�T��W4��۵�ci�cCod�Mijզ�vژ4�P[���0KKQE�"�)�^����tF7	r6hڝ����!��[�Nf�L�l��Ki[a��M$U��:�5Xv�P��۫7��ݠ�q��e�lg;X۱5T����EŇ�0o�xVp�o`h�I`{r!B��-��#��k�L�0�۸�*��{b��ց��s)9ߠ��� :()?U����]w1(��.%0��BE�3����9re�K���*z��B��'���#�d"�P�^��ޅU�<���~�{�t��D�9�p� �7E���	��eRS4G��r\�a_��_�j+�}Ӟ�8��,�I�c]<��x���S<�~��A�������+8rflP��y�W�
 )h�x��ۋ�{E"��ph�&%��js]�p��y)�@V!Km썟�uD����7��A)�8�TSkI��ۙ�qLe�V�ȃ� �C����P7��F��M�K����i�ֻ���a��������O�>��*w��BxJH���Br��5�]�/����)6w�;�3_��Hm;�%�zEC
�lJ"�1L|8�Pŝ 闎p�>�|�ì 4�{�!����
���'.���% v��ٜ-�S��:�է~�e5$�C�E��0�_@% G�������#�b(%����2�!�e|ï��{����!f���J���ūԠ\fC!}��R�IB/u= ��o
m60I�P��А�����^��bd���擄��1y%��޵z6�=i���k��2��9�йjL8ӏ�iP�}����$�a�br
���X�@O;i�vp���@�t�3r����}ŤO��P26�	2ۢ�pke'Z����Ov�&����ֻ�\_2�D��Ȱ�s=gy,b���_yJ�fH��1��:���@�=�Y�A̡�p�q�4�Pe�tb	��������9т���^E� �-eķQ� �m��Z��Av�˭����%��g�
@�\d�/�l��r��h�^q��e�L��ʐ[D�����i���cɈ��F�D�?��6�~'ա#�O��a�#sPzA�hYhB8;O1Q`H�ѡ��w�i+b��he�^�I#Ñ-� ��Y�F��b�+�e&����g��\����?dulH\�3F�����#���qBSH��-(��:���oq���q?P軗��&���}*�oD6g�H��������#]n~$N^��g*�Δu����Q���L9r���{��2Й�i`q~��w������x�<�5��g�ĵ�:�'[�W]o��Ҋ��������1#���\V��t!r;y�s���>��R�̉��9�gu)���X�i�H��Dw�M�納�]O�b �k�-���2�J��O�!�fW�5oX9�;�QvÚ�,=5p�e�1\QV�>��
��+��W�����w�����i���k=V��!6�Q����$#!N� �M!��w�?��B��A珈hX^Xd?�����|������߰��D,00/��+ �;�>'����&w���fl�/w���8�jg�IO,	�6�J,.�y�W�h���#�L�����uA2dc�}{J�i~)�ƋOc0�C㧨�]>=1��I���Uc͐9$'�0z�|�]@l9���_H�Ņ|Ǌ�7S/�!Pr\C�Yy]Fy�m�RP=��cM�ޤ���? ����l�C�I$(�H�Д������ �@�P:s;
����ҹ��W�"�^�6r�o�dRIaD�Z�Ɖ4l5�^~D������sݤ��Y�ބkw�x$.t�$���נm���"��"젎��=���(v���bEE]����0�w�[����o�$Z44b�Ӷ��b��b�9��cB�8��ɒ���}��	�h�>SI8H�6�+`C_t������"16�'5��-S2^��D4(�o� eZ��=���EZ�#i�$��}-����#��͞;u���C�X$��&���BB�U*R_�P�/s0��kd1�3HI��oe�4c}VJ���h4T�X;��1���`�*��k?�!��7��H�88ש��|ghCEl6�!�$�1D�6�k�Y��"��Y#:����O@,���3�2�a?����$��LD�9WPo���Ȓ�>��
Bۇ��. ���FP_��P%V���4�
���T�(��̚N̑\�
-���j^/]0�����:�J0����1��F�Ӣ�|:�X�N�IX�l(��D�!.�_lZ����R�)/�l����:��+�ſhf#@�1T��%��Ѵ���pc!�T6j	�9�.G5�k�bߘ��Z�0�qX��:�lf�� +ElBZl�V v^���:Z���Zj8,�]��8[�'ȁ] ��S�-5��x 2j�XK����A.	������+�*OiPU&�%�1� 8��:VzZ���cS�A�jY������jb%Fr����W�9���DZM4��0Oe���)�t��8)���B���-��h5��٧�r�Z ��9[@p �^kKՈ� ��o[q�e�m��f�V��%�Y2Ccm�̨.��W�D�8�2�朲u�@�
A�Qd�
*�f�\��>���� Tȳ�#�wh�+ ����*""#>�(�����2�-�l1�l9��>�؉xX�C�]T͠$�7�J�g$�d�X��*t�j���{�E>+>3"�)$� �i#��y�ϡ�~��}��n`�*��]�@P�z`4������B��4/>�E"�Ot0�=3]�7D0�)�0P��<H#��p����q�������N)��Ti4��I��D��A�u�o�*H��k��A<}����x@;�~�N^�dD"�$C�o�x)����TR��(&�Wf}�Elv�=�2�V��cџ@�Hd!�`$�B���A�G �8B�b(���WP%�D�ZC���� ��Z��w|ǌ�@����ԣg� OB7u§,���m��"�����n
[o}T���m��-va'�@u�*��$�IX�x���1=�c�=79;R- �3οG�RX�EEhK^�����o�(C,�&P�&�ٜ�frS��R��!!տ����I��n+R����o.F�6LDĖ�c5�5��A��ߢ�B&6�i��#iI�b�Hv��^�%g���o��Ү*�&��%�%|�D.$�i�
*�0��C_�!�P�a��v~�V����6��"s��[Ac��Ί�+�6�F�H��Z���l��1�����1���"��y@DŠ������"����I�K�<��8�z�\��7��x�#u��#C��*:ͲY$�P��`E[�(��a�QY�`H�rGP����B��C�0}�(h��)���^Iw�zM�-�"Fs��A���l�G��!�u�:�|ꪪ����{��5���H�S �es#!u�0D�u��E	d������ݡӊ��~����8(�$(�
%���7�'�|�i�������S6 -<�����rt��C�Z\\��)�ᰟ���F�qg0�_e���,]�խ@��0/f6�h��(L޲,CMmi_�E��T�œ_���q�+��VH��'�lD����>�`D�4��zb$�2�B ��,�ש,P�C(�BcM�PE��6�)3";z2��E�e!ȸx����H�X�;Xka�Ѓ<�����G��H�`,��2^g�F:W��SX�
~:��.{%2P����[lBj0��RU�"�-�8spr�fBJH���2��-��Y+/~�X�=�J���)� ��Y�1l��=����=z���`>�������xa�w�(�EBc@��9JTJ�8u,��kh+!- hp�捆���%�j�e� ��#i6�$� �$I�y�a���va���@���)��?V�6�؂��B�P\��>��ҷ���"&���,��5%� ��q���D�C��;�!���f\ʹ#���<�i��0��SK�QvF!�e)9�d	t 2�	a�XN1I糥A �����\9�#�#�368b$AY&�B�b�� i��}�d�!A�!��ܒ� ho�6��Q7�%�6IH��mT�'��ML*�(�ㄺ����A�NQH�b�D�
��K�9J�gD�� Z�!�C�8�!�ۛ�(kk�����ˤ�Y��T�H��O�'����l��C|�	QT�jYMaU�D�e7�������Z�!�� \TD'�7��-On�Jg�D�R>T��Ө��"v-��M�Q؏B�UN�QO�4[g�F_�LԐ����*\{I6��- �>�xٚÉHt�)�t��#'[�/|s���Ӷ[>�df�$�	���ޭ�h T�i�Z7,�0@
l�i �yp�I�B:,���� �~mCl��l8���G���{k���L1�V���dj+M�Ң���"aP�d�k�]�g!��hi�E��Cq�`��[V�:�e��Aa�`,���B�P�8z�k4�^�ҷ��@��@�e�;+���ThXI�����#�`9Ɋ�!�\rݬE�W��5	�#4���K{�O����<��6m���܃w�ʗ~����^��5b�$/)�cad�9�*���Z��uTo�g�
�ۤ�g�����ݺ|���� ��-0+cx�Z⨓��P>A�\�@bi������(�<$��~�'=ņ�VNgsmx�#�����M�]	1�5��1�LBֶ�gJ�ًS�%�YM�Nd��M����Mw�Hmq.xI�:�?B �{�.��F��`�.z����"!vF.c����<gt�������3��Aj/�3��V�(P���U���qt��Ũԑ)Gg	�
�Zg `��Y5��"��G:D��A�/&T�
�b�����>�TQ�a�hc17��#՛Y��J��!-3f���� ,�\���)Kf���ZIi	�U�;ڵ��}�y�ӄ]&`I�ص�P1r�T�V�¶L5�
�9�"+��N0ݕB��Z V��B� ��&��d��݋�������r�{�R��S���1B@V�Z�5bL=%�������	��mF"(�fpq"��e�zJR�>�R�� ��S`�l+H�d�A!�eGq}rH�N��%��Hp���l��8��"'GZ��GR��d�<ړWA�)�sK�@)���-�))L�Πa�0���i�A����4�@qK?�ǖg��44�ĺH�6F���y�rE8�퀨�!z,��,Ή�l8zw44${��=�p3��P�D�R�H�v����T�XA�U2 dʕ�x�P�HG�(�t�-�q:��q;c�2�Q �C.�V�"ê�A`�|��o'WT6������pvC9���V�#=r�\Xԅip�a�'ڌ�Y�b��Y�s�Ԧ��B4���M�2�Ii;Ȱ}����/vkٸ���Hp�X�����K_-�R�3h.�h`YA�����V9pÁ��hӖLC����0`Q��l���x�r��018��Ls� <ј���s\%�*�E	�� +dB��zm*_��'��!5�3�QS�dl>mM	F�	�����g=fEI�$+"\�Th�d+10�U&�����@x�A��@�f��
Y��3�u����nJ��y��]�~]J�A���Y$r`��H�N�S�y���:z���m��am�e�A��3N���A�8k2jP���p�n��}��yÃ.
U��6�L-����|�@��5�0���[E�wF�:S�)~�J���C0g��@��b���٤kjG!5�7� �c��Fj�$��*m�%�l���GNV�C_��$�ԙT�T!�6�=D�To:
b;p�lFB�jR��	�z��ŌkT���S�Y�yhG]@�jf�=�(��P҆5v��>�� -6 *we�<&*��^�m�*!B�Do�D�q��qm��(kQ� ]�G��7�C����3�h1:��˫[cm���0�1�X��(l�,$&��K4�p�U�F��4����n�R�s�gH���S/G�W�b��c-
䇻�����I�bx�U��C�3z�m���u��. ���	�K�hL\5�r�F�Į�n�`e�b��7 ��=�JD9�%�6dį��\(d_��$z�xP�sdy!Y��4V?V�|�A��fg=��"��<P�?�D �O�<��!z?L�^�����'�aGPL��0h�F��o���WRo>s���&�5>�M��.�m��|���!;��� ���~�������w$S�	I���