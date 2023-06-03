/-  *scratch
/+  *ui
/+  rudder
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
  =/  =key  (snag 2 site.trail)
  =/  file=(unit file)  (~(get by pile) key)
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    :: compile
    %^  template  q.byk.bowl  "{(trip key)} | scratch"   
    :~  ;main.flex.justify-center.h-full 
          ;section.flex.flex-col.w-full.h-full.p-4.pl-2
            ;h1.font-semibold.text-2xl.mb-3:  {(trip key)}
            ;+  %:  mx
              %sl-textarea
              'flex-1 ${tws({ base: "h-full", textarea: "h-full font-mono overflow-x-auto whitespace-pre" })}'
              ~[[%name "text"] [%value ?~(file "" (trip text.u.file))] [%readonly ""]]
              ~
            ==              
          ==
        ==
    ==
  ::
  --
::
::  fair winds to ye!
--