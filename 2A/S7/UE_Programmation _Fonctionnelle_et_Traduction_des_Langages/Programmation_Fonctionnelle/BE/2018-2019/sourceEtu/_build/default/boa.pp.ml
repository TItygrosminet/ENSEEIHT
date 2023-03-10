Caml1999M029????            &boa.ml????  ;?  ]  3?  3?????1ocaml.ppx.context??&_none_@@ ?A??????????)tool_name???*ppx_driver@@@????,include_dirs????"[]@@@????)load_path!????
%@%@@????,open_modules*????.@.@@????+for_package3????$None8@8@@????%debug=????%falseB@B@@????+use_threadsG????
K@K@@????-use_vmthreadsP????T@T@@????/recursive_typesY????]@]@@????)principalb????%f@f@@????3transparent_modulesk????.o@o@@????-unboxed_typest????7x@x@@????-unsafe_string}????@?@?@@????'cookies?????"::???????????,inline_tests?@?@@????'enabled??.<command-line>A@A?A@H@@??A@@?A@I@@@@?@@????????????????,library-name?@?@@????"be??A@A?A@C@@??A@D@@@@?@@???????@?@@@?@@?@@@?@@?@@@@?@@@?@?????@??????"()??&boa.mlB B BA@@@????????3Ppx_inline_test_lib'Runtime5set_lib_and_partition@@??@???(@@@??@??? @@@@@@@@?????%Regle??B B N? B B S@??????A?    ?#tid??,E ? ??-E ? ?@@@@A?????#int??5E ? ??6E ? ?@@?@@@???)ocaml.doc???????	. tid est le type des identifiants de règles. ??ED Z \?FD Z ?@@@@@@??????????< td est le type des termes. ??SF ? ??TF ? ?@@@@@@@??VE ? ?!@@?"@???A?    ?"td??`G ? ??aG ? ?@@@@A?????$list??iG ? ??jG ? ?@?????$char??rG ? ??sG ? ?@@?@@@@?@@@???>E???????/.@.@@@.@.???HO???????	y id: tid -> int
  Renvoie le type des idenfitiants de règles du terme
  Resultat : retourne l'identiant de al règle
   ???H ? ???KTY@@@@@@@???G ? ?&@@?'@???Р"id???LZ`??LZb@??@????#tid???LZe??LZh@@?@@@????#int???LZl??LZo@@?@@@?@@@@???w~???????/.@.@@@.@.????????????	? 
  Appliquer la règle sur un terme. 
  appliquer : char list -> char list list
  Resulat : retourne le nouveu terme généré
  ???Mpr??Q??@@@@@@@???LZ\@?@???Р)appliquer???R? ??R?	@??@????"td???R???R?@@?@@@????$list???R???R?@?????"td???R???R?@@?@@@@?@@@?@@@@????????????98@8@@@8@8@???R??@?@@?? C V V?S@@????ѐ??????	< L’interface correspondant à une règle de réécriture. ??A@@?A@ A@@@@@@@?@?@??????&Regle1??U&?U,@???????A?    ?#tid??(W=D?)W=G@@@@A?????#int??1W=J?2W=M@@?@@@@??5W=?@@?@???A?    ?"td???XNU?@XNW@@@@A?????$list??HXN_?IXNc@?????$char??QXNZ?RXN^@@?@@@@?@@@@??VXNP@@?@???@?????"id??bYdj?cYdl@?@@@??@@???%terme??lYdm?mYdr@?@@@???!1@??tYdu?uYdv@@@?A@@@??xYdf@@?@???@?????)appliquer???Zw}??Zw?@?@@@??@@???%terme???Zw???Zw?@?@@@????"::???Zw???Zw?A???????????$List&append???Zw?@?@@@??@????%terme???Zw???Zw?@?@@@??@????%???Zw???Zw?A??????? A?
??Zw?@@@?????"[]?A@?	A@@@?A@@???Zw?@@@@?;@@@??????@A@?AA@@@?CBA@@???Zw?D@@@?OEA@@@???ZwyG@@?H@???@??????????\????\??A@@@????????3Ppx_inline_test_lib'Runtime$test@@???&config?   ????2Inline_test_config@@@???%descr?  ???	.<<(appliquer ['B'; 'O']) = [['B'; 'O'; 'A']]>>#@#@@#@@???$tags????"[],@,@@???(filename???3@3@@???+line_number???"28@;@@???)start_pos???!2@C@@???'end_pos???"54@K@@??@??@@????>S@S@@??????!=??D\???E\??@?@@@??@??????)appliquer??Q\???R\??@?@@@??@????Ű?[\???\\??A??????? B?
?e\??@@@?????ְ?l\??A??????? O?	?u\??@@@??????? A@?!A@@@?"A@@?#A@@@?%$A@@???\??&@@@@?2'@@@??@????????\???A????????????\????\??A??????? B?
??\??@@@????????\??A??????? O?	??\??@@@????????\??!A??????? A?	??\??@@@???????0A@?1A@@@?2A@@?3A@@@?$4A@@?%5A@@@?76A@@?B7@@@??????=?A@?>?A@@@?J?A@@???\???@@@@???@@@?@@@?@@@?@?@???V66??]??@@????%Regle???U.??U3@?@@??@@@???U@?@??????&Regle2???_????_??@???????A?    ?#tid???a??a@@@@A?????#int??a?a@@?@@@@??
a	@@?@???A?    ?"td??b?b!@@@@A?????$list??b)?b-@?????$char??&b$?'b(@@?@@@@?@@@@??+b@@?@???@?????"id??7c.4?8c.6@?@@@??@@???%terme??Ac.7?Bc.<@?@@@???!2@??Ic.??Jc.@@@@?A@@@??Mc.0@@?@???@?????)appliquer??YdAG?ZdAP@?@@@??@@???%terme??cdAQ?ddAV@?@@@????հ?kdAZ?ldA|A???????????$List&append??{dAe@?@@@??@????%terme???dAf??dAk@?@@@??@???????$List"tl???dAm??dAt@?@@@??@????%terme???dAu??dAz@?@@@@???dAl??dA{@??@@@@?=@@@???????
BA@?CA@@@?EDA@@???dAYF@@@?PGA@@@???dACI@@?J@???@??????????f~???f~?A@@@????????3Ppx_inline_test_lib'Runtime$test@@?????   ?????@@@?????  ???	6<<(appliquer ['B'; 'O'; 'A']) = [['B'; 'O'; 'A'[...]>> @ @@ @@?????????'@'@@????????-@-@@???????"38@4@@???????!2@;@@???????"69@B@@??@??@@????J@J@@??????Ͱ?f~??f~?@?@@@??@??????)appliquer??f~??f~?@?@@@??@???????'f~??(f~?A??????? B?
?1f~?@@@????????8f~?A??????? O?	?Af~?@@@????????Hf~?!A??????? A?	?Qf~?@@@???????0A@?1A@@@?2A@@?3A@@@?$4A@@?%5A@@@?76A@@??_f~?8@@@@?D9@@@??@????Ұ?hf~??A????????ܰ?rf~??sf~?A??????? B?
?|f~?@@@?????????f~?A??????? O?	??f~?@@@?????????f~?!A??????? A?	??f~?@@@????????f~?1A??????? O?	??f~?@@@????????f~?AA??????? A?	??f~?@@@???????PA@?QA@@@?RA@@?SA@@@?$TA@@?%UA@@@?6VA@@?7WA@@@?HXA@@?IYA@@@?[ZA@@?f[@@@??????aA@?bA@@@?nA@@???f~?@@@@??@@@@@@@@@@@???`  ??g??@@????%Regle???_????_??@?@@??@@@???_??@?@??????&Regle3???i????i??@???????A?    ?#tid???k??? k??@@@@A?????#int??k???	k??@@?@@@@??k??@@?@???A?    ?"td??l???l?@@@@A?????$list??l?	? l?@?????$char??(l??)l?@@?@@@@?@@@@??-l??@@?@???@?????"id??9m?:m@?@@@??@@???%terme??Cm?Dm@?@@@???!3@??Km?Lm @@@?A@@@??Om@@?@???@?????)appliquer??[n!'?\n!0@?@@@??@@???%terme??en!1?fn!6@?@@@??A?????#aux??qo9E?ro9H@?@@@??@@???!t??{o9I?|o9J@?@@@??@@???$list???o9K??o9O@?@@@??????!t???pQ]??pQ^@?@@@?????????qdn??qdp@???????"t1???qdl@?@@@????????qdr??qdt@???????"t2?@?@@@?????)???qdv??qdx@???????"t3?@?@@@????!q???qdy@?@@@@?&A@@?'@@@@?;A@@?<@@@@?3A@@?4@@@@????????"||???qd???qd?@?@@@??@??????"&&???qd???qd?@?@@@??@??????????qd???qd?@?@@@??@????"t1??qd?@?@@@??@??? O??qd?@@@@??qd??qd?@??@@@??@??????/??qd??qd?@?@@@??@?????????*qd??+qd?@?@@@??@????"t2??5qd?@?@@@??@??? O??=qd?@@@@???qd??@qd?@??@@@??@??????	??Lqd??Mqd?@?@@@??@????"t3??Wqd??Xqd?@?@@@??@??? O??`qd?@@@@??bqd??cqd?@??@@@@?(@@@@?W@@@??@?????????qqd??rqd?@?@@@??@??????:??}qd??~qd?@?@@@??@????"t1???qd?@?@@@??@??? A???qd?@@@@???qd???qd?@??@@@??@??????????qd???qd?@?@@@??@??????h???qd???qd?@?@@@??@????"t2???qd?@?@@@??@??? O???qd?@@@@???qd???qd?@??@@@??@??????????qd???qd?@?@@@??@????"t3???qd???qd?@?@@@??@??? A???qd?@@@@???qd???qd?@??@@@@?(@@@@?W@@@@??@@@????Y???r????r??A??????????!@???r????r??@?@@@??@????$list?@?@@@??@????z??r???r??@??????? A?
@@@?????!q??!r??@?@@@@?&A@@?'@@@@?7@@@?????`?<A@?=A@@@??>A@@??/r??@@@@???????#aux??9s???:s??@?@@@??@???????Cs???Ds??@????????"t2??Os??@?@@@????????Ws???Xs??@????????"t3?@? @@@?????!q??ks??@?@@@@?*A@@?+@@@@?!A@@??qs???rs??@??&
@@@??@??????!@??s???s?@?@@@??@????$list???s? @?@@@??@????????s???s?	A????????"t1???s?@?@@@?????۰A@?	A@@@?A@@?*@@@@???s????s?
@??%@@@@?w@@@???qd}@@@???@???t??t@@@@????????t??t@@?@@@@???pQW@@@?>A@@?IA@@@???o9=@@??????#aux???u$??u'@?@@@??@????%terme???u(??u-@?@@@??@???????u.??u0@@?@@@@?@@@?#@@@??A@@@???n!#@@?@???@??????????w24??w2A@@@????????3Ppx_inline_test_lib'Runtime$test@@????   ????@@@???
?  ???	6<<List.mem ['B'; 'A'; 'O'] (appliquer ['B'; 'O'[...]>> @ @@ @@???	????'@'@@??????!-@-@@??????"55@4@@??????!2@;@@??????"77@B@@??@??@@????AJ@J@@???????$List#mem??Iw2A?Jw2I@?@@@??@???????Sw2K?Tw2YA??????? B?
?]w2N@@@?????ΰ?dw2PA??????? A?	?mw2S@@@?????ް?tw2U!A??????? O?	?}w2X@@@???????0A@?1A@@@?2A@@?3A@@@?$4A@@?%5A@@@?76A@@???w2J8@@@??@??????)appliquer???w2[??w2d@?@@@??@????
???w2f??w2~A??????? B?
??w2i@@@????????w2kA??????? O?	??w2n@@@?????+???w2p!A??????? O?	??w2s@@@?????;???w2u1A??????? O?	??w2x@@@?????K???w2zAA??????? O?	??w2}@@@?????%?PA@?QA@@@?RA@@?SA@@@?$TA@@?%UA@@@?6VA@@?7WA@@@?HXA@@?IYA@@@?[ZA@@???w2e\@@@@???w2Z@??k`@@@@??@@@@@@@@@@???@??????	??	x???	x??A@@@????????3Ppx_inline_test_lib'Runtime$test@@???"?   ????!@@@??? ?  ???	6<<List.mem ['B'; 'O'; 'A'] (appliquer ['B'; 'O'[...]>> @ @@ @@???????'@'@@??????	7-@-@@??????"56@4@@??????!2@;@@??????"77@B@@??@??@@????	WJ@J@@???????$List#mem??	_x???	`x??@?@@@??@????Ӱ?	ix???	jx??A??????? B?
?	sx??@@@????????	zx??A??????? O?	?	?x??@@@????????	?x??!A??????? A?	?	?x??@@@?????ΰ0A@?1A@@@?2A@@?3A@@@?$4A@@?%5A@@@?76A@@??	?x??8@@@??@??????)appliquer??	?x???	?x??@?@@@??@???? ??	?x???	?x??A??????? B?
?	?x??@@@?????1??	?x??A??????? O?	?	?x??@@@?????A??	?x??!A??????? O?	?	?x??@@@?????Q??	?x??1A??????? O?	?	?x??@@@?????a??	?x??AA??????? O?	?
 x??@@@?????;?PA@?QA@@@?RA@@?SA@@@?$TA@@?%UA@@@?6VA@@?7WA@@@?HXA@@?IYA@@@?[ZA@@??
x??\@@@@??
x??@??k`@@@@??@@@@@@@@@@@??
j???
y??@@????%Regle??
!i???
"i??@?@@?3@@@??
&i??@?@??????&Regle4??
0{???
1{??@???????A?    ?#tid??
>}???
?}??@@@@A?????#int??
G}???
H}?@@?@@@@??
K}??@@?@???A?    ?"td??
U~	?
V~@@@@A?????$list??
^~?
_~@?????$char??
g~?
h~@@?@@@@?@@@@??
l~@@?@???@?????"id??
x?
y @?@@@??@@???%terme??
?!?
?&@?@@@???!4@??
?)?
?*@@@?A@@@??
?@@?@???@?????)appliquer??
? @+1?
? @+:@?@@@??@@???%terme??
? @+;?
? @+@@?@@@??A?????#aux??
? ACO?
? ACR@?@@@??@@???!t??
? ACS?
? ACT@?@@@??@@???$list??
? ACU?
? ACY@?@@@??????!t??
? B[g?
? B[h@?@@@??????	C??
? Cnx?
? Cnz@???????"t1??
? Cnv@?@@@?????	V??
? Cn|?
? Cn~@???????"t2?@?@@@????!q??
? Cn@?@@@@?'A@@?(@@@@?A@@? @@@@?????????? Cn?? Cn?@?@@@??@??????ְ? Cn?? Cn?@?@@@??@????"t1??$ Cn?@?@@@??@??? A??, Cn?@@@@??. Cn??/ Cn?@??@@@??@?????????; Cn??< Cn?@?@@@??@????"t2??F Cn?@?@@@??@??? A??N Cn?@@@@??P Cn??Q Cn?@??@@@@?'@@@????	İ?Z D???[ D??A??????????!@??h D???i D??@?@@@??@????$list?@?@@@??@????!q??| D??@?@@@@?%@@@?????	??	*A@?
+A@@@?-,A@@??? D??.@@@???????#aux??? E???? E??@?@@@??@????
??? E???? E??@????????"t2??? E??@?@@@?????!q??? E??@?@@@@?A@@??? E???? E??@??@@@??@??????!@??? E???? E??@?@@@??@????$list??? E??@?@@@??@????
A??? E???? E??A????????"t1??? E??@?@@@?????
?A@?	A@@@?A@@?*@@@@??? E???? E??@??%@@@@?b@@@??? Cn?@@@???@??? F???? F??@@@@????
5?? F??? F??@@?@@@@?? B[a@@@?CA@@?NA@@@??	 ACG@@??????#aux?? G??? G??@?@@@??@????%terme?? G??? G??@?@@@??@????
[??' G???( G??@@?@@@@?@@@?#@@@??A@@@??. @+-@@?@???@??????;??: H???; H?;A@@@????????3Ppx_inline_test_lib'Runtime$test@@???
P?   ????
O@@@???
N?  ???	6<<(appliquer ['B'; 'O'; 'A'; 'A'; 'O']) = [['B'[...]>> @ @@ @@???
M????
L'@'@@???
K???e-@-@@???
J???"72@4@@???
I???!2@;@@???
H???"65@B@@??@??@@?????J@J@@??????
G??? H?*?? H?+@?@@@??@??????)appliquer??? H?	?? H?@?@@@??@??????? H??? H?(A??????? B?
?? H?@@@???????? H?A??????? O?	?? H?@@@?????,??? H?!A??????? A?	?? H?@@@?????<??? H? 1A??????? A?	?? H?#@@@?????L??? H?$AA??????? O?	?? H?'@@@?????&?PA@?QA@@@?RA@@?SA@@@?$TA@@?%UA@@@?6VA@@?7WA@@@?HXA@@?IYA@@@?[ZA@@??? H?\@@@@?h]@@@??@????p?? H?-?A????????z?? H?.? H?:A??????? B?
? H?1@@@????????! H?2A??????? O?	?* H?5@@@????????1 H?6!A??????? O?	?: H?9@@@?????u?0A@?1A@@@?2A@@?3A@@@?$4A@@?%5A@@@?76A@@?B7@@@???????=A@?>A@@@?JA@@??Q H?,@@@@??@@@@@@@@@@@??T|???U I<?@@????%Regle??\{???]{??@?@@?/@@@??a{??@?@?????/ArbreReecriture??j KAM?k KA\@???@??p L__?q Y@@@??s KAA@?@???@????????A@@@??????})unset_lib@@??@????@@@@@@@@@