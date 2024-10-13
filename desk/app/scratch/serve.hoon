/-  *scratch
/+  *ui
/+  rudder, server
::
^-  (page:rudder pile action)
::
|_  $:  =bowl:gall
        =order:rudder
        =pile
    ==
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action)
  ~
++  final
  |=  [trail:rudder rsp=(response:rudder action)]
  ^-  reply:rudder
  [%auth '/']
++  build
  |=  $:  =trail:rudder
          args=(list [k=@t v=@t])
          msg=(unit [gud=? txt=@t])
      ==
  ^-  reply:rudder
  |^  [%full (get-file trail) &]
  ++  get-file
    |=  =trail:rudder
    ^-  simple-payload:http
    =,  gen:server
    =/  stripped  (slag 2 site.trail)
    =/  scry-path=path
      %-  lowercase
      %+  weld
        ^-  path
        :~  (scot %p our.bowl)
            q.byk.bowl
            (scot %da now.bowl)
        ==
      ^-  path
      ?~  ext.trail  (weld stripped /index/html)
      (snoc stripped u.ext.trail)
    ?.  .^(? %cu scry-path)  not-found
    =/  file  (as-octs:mimes:html .^(@ %cx scry-path))
    ?~  ext.trail
      (html-response file)
    ?:  ?=(%woff2 u.ext.trail)
      [[200 [['content-type' '/font/woff2'] ~]] `.^(octs %cx scry-path)]
    ?+  u.ext.trail  not-found
        %ico   (ico-response file)
        %js    (%*(. js-response cache %.y) file)
        %css   (%*(. css-response cache %.y) file)
        %png   (%*(. png-response cache %.y) file)
        %svg   (%*(. svg-response cache %.y) file)
        %html  (%*(. html-response cache %.y) file)
    ==
  ++  lowercase
    |=  upper=(list @t)
    %+  turn  upper
    |=  word=@t
    %-  crip
    %+  turn  (rip 3 word)
    |=  char=@t
    ?.  &((gte char 'A') (lte char 'Z'))
      char
    (add char ^~((sub 'a' 'A')))
  ::
  --
::
::  fair winds to ye!
--
