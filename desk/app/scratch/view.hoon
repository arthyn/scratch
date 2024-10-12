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
  =/  =file  (~(got by pile) key)
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    :: compile
    %^  template  q.byk.bowl  "{(trip key)} | scratch"
    :~  ;main.flex.justify-center.h-full(x-data "\{ url: ''}")
          ;section.flex.flex-col.w-full.h-full.p-4.pl-2
            ;div.flex.items-center.justify-between.mb-3
              ;h1.font-semibold.text-2xl.ml-4:  {(trip key)}
              ;div.flex.items-center.space-x-2
                ;span(class "hidden sm:inline-block text-gray-400"): Write and share your own notes
                ;sl-button(href "https://pier.link/apps/grid/search/~dister-nocsyx-lassul/apps/~dister-nocsyx-lassul/scratch", variant "primary", size "small"): install scratch
              ==
            ==
            ;+  ?-  view.file
                    %plain
                  ;sl-textarea(name "text", value (trip text.file), readonly "", class "flex-1 part-[base]:h-full part-[textarea]:h-full font-mono overflow-x-auto whitespace-pre-wrap");
                ::
                    %html  ;div;
                  ::  can we convert string straight to HTML here or do we need to use a component?
                ::
                    %md
                  ;div(class "prose prose-invert m-4")
                    ;md-block: {(trip text.file)}
                  ==
                ==
          ==
        ==
    ==
  ::
  --
::
::  fair winds to ye!
--
