|%
++  tw
  |=  html=manx
  ^-  (map @t tape)
  =/  tag=marx        -.html
  =/  children=marl   +.html
  =/  classes  (~(gas by *(map @t tape)) (classify tag))
  %-  ~(uni by classes)
  %+  roll
    children
  |=  [=manx acc=(map @t tape)]
  (~(uni by acc) (tw manx))
++  classify
  |=  [=mane =mart]
  ^-  (list [@t tape])
  %+  roll
    mart
  |=  [[attr=^mane val=tape] acc=(list [@t tape])]
  ?.  =(%class attr)  acc
  =/  parts  (split (crip val))
  ?~  parts  acc
  %+  turn
    (need parts)
  |=  class=@t
  [class (trip class)]
++  split
  |=  corpus=@t
  ^-  (unit (list @t))
  ?:  =(corpus '')  ~
  ?~  normed=(trimall corpus)  ~
  =/  test  (crip (need normed))
  %+  rush  test
  (more (plus ws) (cook crip (plus ;~(pose aln hep))))
++  trimall
  |=  corpus=@t
  ^-  (unit tape)
  ?:  =(corpus '')  ~
  %+  rush  corpus
  %+  ifix  [(star ws) (star ws)]
  %-  star
  ;~  less
    ;~(plug (plus ws) ;~(less next (easy ~)))
    ;~(pose (cold ' ' (plus ws)) next)
  ==
++  ws  (mask " \0a\0d\09")
--