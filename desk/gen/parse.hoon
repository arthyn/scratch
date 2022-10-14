:-  %say
|=  $:  [now=@da eny=@uv =beak]
        [[code=@t ~] ~]
    ==
=<
noun+(rash code wide-attrs)
|%
++  wide-attrs                                      ::  wide attributes
  %+  cook  |=(a=(unit mart:hoot) (fall a ~))
  %-  punt
  %+  ifix  [pal par]
  %+  more  (jest ', ')
  ;~((glue ace) a-mane (ifix [(just '"') (just '"')] (plus ;~(less (just '"') prn))))
::
++  a-mane                                          ::  mane as hoon
  %+  cook
    |=  [a=@t b=(unit @t)]
    ?~(b a [a u.b])
  ;~  plug
    mixed-case-symbol
    ;~  pose
      %+  stag  ~
        ;~(pfix cab mixed-case-symbol)
      (easy ~)
    ==
  ==
::
++  mixed-case-symbol
  %+  cook
    |=(a=tape (rap 3 ^-((list @) a)))
  (plus ;~(less (mask " \0a()<>\"'=`") prn))
::
--