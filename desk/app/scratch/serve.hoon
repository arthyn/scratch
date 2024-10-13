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
  ~&  "serving file {<trail>}"
  |^  [%full (get-file trail)]
  ++  get-file
    |=  =trail:rudder
    ^-  simple-payload:http
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
    ~&  "scrying path {<scry-path>}"
    ?.  .^(? %cu scry-path)  not-found:gen:server
    =/  file  (as-octs:mimes:html .^(@ %cx scry-path))
    ~&  "got file {<scry-path>}"
    ?~  ext.trail
      (html-response:gen:server file)
    ?:  ?=(%woff2 u.ext.trail)
      [[200 [['content-type' '/font/woff2'] ~]] `.^(octs %cx scry-path)]
    ~&  "serving file {<scry-path>} with extension {<u.ext.trail>}"
    ?+  u.ext.trail  not-found:gen:server
        %js    (js-response:gen:server file)
        %css   (css-response:gen:server file)
        %png   (png-response:gen:server file)
        %svg   (svg-response:gen:server file)
        %ico   (ico-response:gen:server file)
      ::
          %html
        %.  file
        %*    .   html-response:gen:server
            cache  %.y
        ==
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
