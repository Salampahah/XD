#!/bin/shskip=23set -Cumask=`umask`umask 77tmpfile=`tempfile -p gztmp -d /tmp` || exit 1if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then  umask $umask  /bin/chmod 700 $tmpfile  prog="`echo $0 | /bin/sed 's|^.*/||'`"  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &    /tmp/"$prog" ${1+"$@"}; res=$?  else    trap '/bin/rm -f $tmpfile; exit $res' 0    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &    $tmpfile ${1+"$@"}; res=$?  fielse  echo MAU DIBONGKAR YA BANG ? $0; exit 1fi; exit $resBZh91AY&SY>�� ���x�I�����������qM]����C�  � `/�c�j�+�y���=;�����+1}�k����u��|A!����{CEt6ej��$�:u�ͨ(>7u�-�^��{�-S����k��:��4����[�Kmz��b���.��=�P��@4�453Je7�'�~��zM�SjoT��H=OP    4ЁP�#'�Oj��d��M'��h@�� i� d�FM24"h��H2� d ��  �      &�I��A&i�mS�djz�f������y��5=OS L  `�Di�O!�z#H�'�2z5G�{Q�6�C�F��A�24���=F���=A"A � 1 S2����J���yO4���SF�P4i�4h   �:^d 	UDRd&��)(DG�pw�*Nl�/#�������V�7ϊ�f���bH�73��f��U0�  *J0��\��*�.]��jy��;4����K�?P�RSC��c�PBT�PvZ�i��J{PZ�+�)JӏeQoH���3$�v��>� Y�Z;E���U�OԙQ¡�?��7_�z�*s�h4-sMv���nmOV���gA��{V�ܥ����R2u}��h�U+�*�I�/6����E0ui���gr}=���3o��4�>���Y=����١�uG;�f�bN�&6{/����r�1F��K�T�a�.A�C!�3��%��;>^O�7�v�^Nt�+�����K�J���i����=�o0�i�λ�b���S�Mi�W����u>��8k�6�FF�+u~Q�ᣟ��1�{��*���y���k�K�5,p7�]������{�� �1�wY�$V��@��B7�AmC�̥!�r�C���L����b��{脣�\�2��4��k�/q���횵�^Nvc$�ɶ�IV���]��p�j��N|��PZD̈A��m��߆Վ͑<,pϽ>�M�|��-MW*ұ�_�g�'�a���'O1$��X鯶��{���JVs���d�o6Lȃa���3N\2��w�.�M��~��`��ǹ�@���W�"7�M$6o*���*�"����GA_y����-}q@�|A�0��h(�〈k!��}������,F�q#����n����G�CX0M�B�K1^�_0^+4�"a38��p~a}�.��V�Ԫ!�����9�4�dS�Z�䷃p8S����	~�+�������-��I��%N|fO�Z���|��VA���1�N݅�b��0 ��d�Dǧ�ɭ��#,�ߦ���9y|V@��) U��uTR\�7��������X�!������#-\bk�!#۸�����k��\�:�v���en�`�߮�`��w�NY6�i�4���f.�[:,a�(�3��Ɛ+��%ynX�Շ�������?��R`�@	n�Wb����U�(�5���Zd8� ��bǩ�'�Ot��Eҕ�>d|�ϸ�;���_���oN�lj敎ߖ7\哮�%(����K���d�%k��33Y����J�������WN�b�M��DG�0��9֪��pPZ���R����!�]{�Q�M�E��5�͕Ea�Y��)�]]�GJB�<�����`���M�$8�ғ���8!�����7	z���\óPZWL�L�+���$Z0���lC69g����Sz�x'����,X�4�O�w9�XR��.����i;T�c��u��6�&���O����O�Ӣ{��6_�I(; ���m����������.����ko��Xܻ�q�y���+��6\��n�{�v������a�h@�z�/���U�+9��gy���i�u�+�_���X1�6P7��֧����(#�q�d�b�#���p��nnKWPaM�Jm �* �b���ѱ'C��/��%J����Qv�pR�x�O�.��:��e������6k[��{���O��b��ړ��!�w�?9B�%�{��!\MC=xyeby^\��u]�J&�!�Dm�5iH���AE��t�Z3�-W�Fu��)I�W��B��W�H�&2��!p�[ȡR�te y��L_��ۘ0��4N�saW�A���V,#S�%�"D�.yo5�c��j�e����ƯS`�"�����L�w4l�a^��O;J�����q��Ɨ'�ޑꪺmlWTC>w�XP_�5JH*�a����O�l&�{ʙv� �l)�o��x��7�P�s*��t�+�d�~	y铥�}�)רL��f�8����_bK^r"�$�R�v���W��Y�"��m$������CE�oۨ����V�7zc9��ʆ!� -�xϨ_xFR@Q$�6*��b!5���ڒ�c����A������oOBa���n����MfX:���v!7���͇��#��s2�R�I{�Z�[{Y:��w��a4#��T��C=����1���\�ߤ�ki��Ϧ�q��3�B�:̸Y����MVs��!��c?��cX��BtU�N��M����%���;���>�!E�����K���]F���Pv��L�;���/�]Ig�>y������yܽ�����ux*(��C���,�P?Y4�H������w���]��y"B��%2S(��V�ILA��S'���>��ZJB�jPaRU!L�H0�s	B�QޚM�M��Py� �Ha%!��P=��Y���L�&�uݪf�ZR�G;`Z���#0�����{d�,�U�����ww��gf��}���X���=i�(;.�V�X��(�H�Ki�%9Av��M���YTᡷ*c ��p"]�$��"R&>6�J ,X	1�c���;�>�����n;tC�3�^�n�bǁ}B��R�#����m���ʶ��NN8�Os���t��l��%�vokBI����q�C�����D���ŷ����B ����a�d�H�o��^u�5�)���5�P���f����DH�b��ͮX!{�P��Ȉ=�ZY�F�*�pͮG� l�/P��k��b��S�t�/w#'�<�,�j�)��L$%0|�6�N��r,�R������8� �6l�a $�`\㬭�L,�O �,a����?Q^[2�$�"!��׭��h7M�M�P�,�>ѣwPx�b�6��x.E�#p�@�p�U(���1Ng��J�9I�d�]�3��pW��*�S{��l�����Vl��Ω��+��ʐ���09�Ξ����&n����`��,������U�Hגc$-����iy���%��I3x���X�~�aBQ�mh:�'�x�3���%U��m9nua��3�$"3�B�'/��H�n{lz�]|��;�y���c8 �ټ��l���լ�z�-&��aUo�Ag�D������`�[\�8�C���&�#Mz��� ���� �ER"(��(�b�(�=���6��]����l4Q�;�\Y��@f�~�^q+,(ʘ����E�qyȫY��ەD��:H��e�+���r�Y�	l¶�ج �Oj��b�h��P���;J��}I��K��9"Ov`�(83(��7ۉ�3\�Z �`�qg�Ҫ|F�"ZRY_	�r����T�I�`94vХ'� ��Ϝw������J �#��L(8�z�<�4G;9�?8��,���h���=>_[���s/=�u�)��ҽ��A:BD�������t����%y�K�@'��q���A86����q3u1�D��n��,�m�4�%�6�[O;�`�1e�(��Z������{�0���`��y5ف嗒��*P���P���JW�y��f7i1�>&90R��� ��X�-横)n,[?;G�w�+@E��)����u�U�	�T:CqJ��^9�ˢ��ۑ�ǡ�2���ˣd>��,|����y �����rj����F�����_�ѯ�x��#�0�z�>o�q��gc��}�,�?x]!��Q��(.�MTD+t��[�tkz1�I���{U�|�}�{��-�����=5X\��Qw+����}�9�ʛd\}z��W��ꭢ�np#�v&�A�!y�x��N�X�h��3�2!�	��y���ԋ�f.u9��JX�2�V����)D�0�����d����@D��k?�b�Yb�� �[�c�;�=f�Q���7���D+������h�-ys&���tU��g�̙(�\zzo�0]BJK�k����n�FU422��%���&{~Bó���-�~�/Z���K��z܄�HI��ꐻ���9��[yj��p�OC/}c���9�ʉ��K�,��CQL���af�����D�P#�(H�pks�����D\�'���2�w�+4V��� Q�IQ����#�w�V�WQ�+�&\�Y���L���x�֗�|j��K2���]q��V��QpB�M��^fB�����=��pz%"���� :[S����巻��ܗnB��'��6�H-5����:�qW��^�2&�(Bܫ��e�e���g��&1�R�Iq��0��1���HȲ8�4�mVfl�a�J�F�DL&]"!��^v��Pv#����F���{p��=�i����-zrQ���r����Z���w�-	���s����Ac�_e�����_2��Q-�k�����t���#��qv��H�7L�|g)M<|�a���}G�f;�-��j�3({I���ϗxs$��<m��9�N��(�3��S�<X&�q��SR��V�Hl��,7B������n*�s"v{�9���t�#��=��&�w����%xx3W��f\4�`pg����l�򙶦a~4=�6iZxj����b���٢y̲��Mt��w�_�Vi$a;��9�>J��9���Q�:{4�t�n��u�S��m��ɳ���cB�ċ�@[����7q����CX��.3fm�5i�T�K��/�O�;�������AC�����������Y�BѬ$;��zg�x���/ZP���������q�����.���Z�mXU�o��|T�H�Ē��%���g��??�IQi�;�İbq��·��:/'qBs����X�R,`�o�.!�:�;�|�O t���{7{�)�'K����D"�<'*{�"�"XI�c�dd�-%)����������I!6���ɑ������X��V��<A��	�ʣ�{{���/3MW��Il6�UQ�J��u�S���@q��B`�H�q���"��_Tá,�U�}��y�e��b�}��Ӄ;ڢ��x�=�r��9��EP��y��|R�"/�hv(+/j�'Qep���#�x��Ԋ1zm��\�{���Bh9�8�"�Hh���Œ��K��Qm]:c�vq�?Yv�<�ɶbe�*<�U��X�2;�	@�&<�2 G�ZB���d��T�a$	t�9/���nG�����$\0a�]�f���86�3�E���|򂚪02`���~�!�<Q'Z�D�Z��In�l�����O/.�hn\�U�A`Ȉ�Gxu�2|;����Ul��`���q!��IsU�/���5�I<@3Zp���� ��Zn��@ 2!����aK��0_�j�ʊ3)1D'��ۜs�U|�K8[��LN( ���f��E� יT�����X�Nt��Fg��V>�8�(BQ.�*E{��f���/6܉{FL����X�g�B�͖cE�7�aA�+)�$$�R����W k���5"J���8�B���{ ��>�~�_dN�K/4�Jڏ*�Bg�n�����M'o�?��TTWG�scC*# ��b;`Q`�8��F%�o�焠�@�la=�˨�K ʚR��+	$��Hcb*$[�=�u��,�Q*L��|R����R�tBf��|p�����L�[�H�0��4�H�Y�&@��[��A�Gӓ~�?�@gj�Ǻ)�d` �պ�p�^��^��&�	ng	�Uƣx��V�-�4�p�Jgl��포���3ƀ���.a.��Kzi���Y�,ZR�q��+�Zc8P�[w���a�9C�JJ�3SG,a9O�vԾ�rh%Fs_6Z%���$PX�z)iEe-�`r��A���8��[ekf1jB�1�Z�}���f��+)r�Y���9Z�p �^k;Ո� ��oZ�e�a�z��`b�F�h`��#M�3°�iAwv��"i]LMM�l5��h�!��QB"QYrn���t@sʗ���&��,�$�DDg�E	)%��{��*��B��'��j���aG}PS���vA�7����$݄�-e�*s��9f�8�kR�R�7�aB�3�U0�<Yo7�6�����U�S:�H�B\d$H�� ���1HX�Frf�!H��Ɍ;`G�)q$bঔ��dJ�g\�w��ӡ����vqUs`�o�ғb[e(ԛ�be5.(:/���H����]G��_w0g>����:�m�(�"0��Xȇ�qG,�!	���*R��))Q^�<�s�ƣ�C�J�Z�o����;ew��,���Bp&{�a~[[���)ύA-� U�;mmH�Պ��vvM�8arp�g��Ǻ�H_m!V�$4��:"��� B�t�Yl	�	y��nX��\�؍bT�{1ZCclm�]@,IC@��`ߊr��Z��s����H1Ӧ�7Δ�GQR�%�VF�v�k<�NP�\l��3�1�����$N�-�;�D85�!��46KP�#z/"L�a�ېKuL@m1C[�ڏ����>�:&6*i�R$n)=6�C����S��� �.>�����Ԃfy�:��t�l�J�$���.ĨK�8��J�OF�ِ���A[�TSB9�"�Usx Ίp,�6��,�o��,��~JA!��Kqo�X1��ܑLQϼ�"ig=�?L���OH����<��K�$t����I��8x'���Õx��A\��U�qI*�ILz�dE7!bQ#�a�bòА��䎱��":ą;'�&�Y�m���Y# �M�o�����s�����4*V��ِ)��Q���D��rp�|ݵUUUW��N(�H���������7Ԧ�G����PÎ(� ����.gOkp;"�vl7�E�;al�N���B��H��EDrΞP�Vr��@7m:/8�2�؀��Vo�E]�W��A!P���Ģ�u��S���zt�w�pHȣBXW��N�o'�&���ݭ	@_Qfk��� b8+E���ia�*�j(ˀ�7�$����h����BD�ڌI�e^4�90�	���f遐L��e�ȁf�vB�a�ˌ�K�B2#h��U��kd.�l�::,[fRbfĐ4^�$��m�����H��.{�	�At�Y�g�c���Ԧ�on�lt��l��D8������/��S`r�B2�xK���pyx�/C�w�]��@֩X����$+c��ph�v��cͬe�%�(k?B��t�s��j��DO_l�ݑ�!��f4�ޠ���Q�}E����"-�P"���cI�L�0*�_)TP�w��Y���h�b���K�g��A�B� �h��	��	�2F $�?7L=�:N�uY��6�p1w�Z���wmM�/�U ��3���|w�sr*H��4q��p6�e&T�i����$�,+�Է� �o�2���JQ�8�`� ��ba����e�h�`�b�R��&@�@(��O2�r��5Z�k;��V(�q����ق�h�*�*�uT�D��x J��d $�}�If�D.1�G �12��ДȺ��%"0i�V�Jh�WqF�%�G-!�I6�E#��HP����Mr~~IY���z�Vb�'F[�T�X�:ݛU��PJ�����[`�Wji �ؐŌ$�H�f%�J�3��E$�F0 [w!З���D�9���Κ���'~i����'�W�F���ė�Fd�Ӥ��$N)�L� `R�a�C�P��5U;�_�5[̏S��W�#D���R��i�8�wbA�}�];�ST3F��l�B��c��`]�c)ȑM�P��4C��2���҇{��i�,�:�ot���۠�#m�Q9�l%�B."%$�p~$�G�d�[k�Ba��,4,�/�d�X�� k��Q	��yx�Q��'�!�	��s�d�^��˔G�0S_V䦑֥��5�\��L*���igH;��v0yȱ���P��4�2IE	np�E�\g5L6Xrr�L��//�.&�6���^u�1{Q�$#|D���^��y��`�A�ӌ���}�*���?�!�jɠ$H]�f���.C�#�����l�S�������Fz��q���z�x��x����`�wi�NU-qX����=�eI����d��(���ٜ����9Har>�����5����7���^&���dZV*�4g�dB^(i��e˅E�)LeA庍WT�,XUT"��;�z���*E )م��LfY�P�v#�"��"�!���x����˚����D+PR1l=����ݝiȗ����$�6\^!�4Pa�9/����i��i	�w���`��R�A�.�ն 9��)�B���^�����ȭ����\юBF	ђG��5���A��b�x�ωdo]�h���V�7X�IǄ�˒�9:p�*ń� �!SjG�������-v�����=ټ����1$�t\ƨ9E�+�o�c&��	�H����2y������I��qa(��FB�ɮ3�%�g��k��|�	� �cm��Ġ/P���	k.�u�$3^b��\P�$\]W�ξ����Em�� �00��>$��>\MA�aʐuU�Sa4-7���h"�I�Y��K`Ӎ�4	lͬ���iC�i��7��I�:@3�A�9u��z�cS9~��Lv� �ʢ�\��(�FI���bVGi�=�٦�`�Rv9=�zgk��/	��ޓ����s�2Gq�.3��@.T%�h��i]��O�B�66�Np�j��p�	>&Ȱ��.\kn=�z�vq!�d�������T�hCz�⁎����-*hR!`H���.6�G�jEs��7?͐��&B&�m�F��B� �,��&x��"����4�`��)�o�^��^��a��؍R,�mC�$��� �X7�	,�P���H·�J��`��i:�g��i���]��aF��Ů�D;��D��'Z�l�i�1w+3�5��! ��0�EZ�92b/l���D�N�TV�)�)Xm�2��pV�fVO�(`   Dѡe�'br.2^9T!3.� WH�!�O�!+�0�0k�����*k(OT��Z=~�ʗA�a$A�FDP�ٞ��L (8Y���bP0_r@(hT������v(> +3Ar-$-�q+mI�f&���i�T�;�֒��i��(X�¢�b c[x���8�Y�Z:��u�[}�^�h�\s�9�t*� x�(Р�F��9��b�=����߾¶olˍ9���r��^	T���4cx6jgQI/������"�*�:�QANz�ɀ�*�s��7�Ê���S��idߩ/r���M΄Y�~�U7���n������L`���f��C�Kb2H�I\�K��$�Q�4>�v�.،�m�L�R��O�ϑ��k\����ks�;1.�7�A٧�����Ư��mFm`��d"�r����1 ��=���*��vW>�,1T��:����ǰ'�!� �"���:N���w��߻�ʳЪa!��i��W%̦�.%�┨��iA��]��$j�l �ޘUe)�Mfs�1+������D�&��E�2�(�nC�{e��BHu���yA&z�*c8����Q�3�A'u�	DR�&.Z��9c#gx��6��aՀ2(B`��ι(�DR�J,&bSB���㬦qB���Rz�4*�Q�4�hNK{!ֿ�.@�i����ttU<*����@O> ��QD �My�!	�x���w��|����9����R̐Hë�g����`$���z��	2����Xne��z<?�~ E`��(�B��V��($i���?$%�x&D�(4��!��@���̀u�̊�����:Ϻ�P�L��T��Φr����~c�(yf��?��O� ���:x�=���T���Ǿg<�A�:��v�|��w$S�	�[�