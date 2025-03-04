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
  =/  norm=tape  (scan (trip text.file) (star ;~(pose (cold '\\`' (just '`')) next)))
  ^-  reply:rudder
  ?:  =(%html view.file)
    =/  hdr=response-header:http  [200 ~[['content-type' 'text/html']]]
    =/  =octs  (as-octs:mimes:html text.file)
    [%full [hdr `octs] &]
  |^  [%page page &]
  ++  page
    :: compile
    ?<  ?=(%html view.file)
    %^  template  q.byk.bowl  "{(trip key)} | scratch"
    :~  ;script: {data}
        ;main.flex.justify-center.h-full(x-data "\{ url: ''}")
          ;section.flex.flex-col.w-full.h-full.p-4.pl-2
            ;div.flex.items-center.justify-between.mb-3
              ;h1.font-semibold.text-2xl.ml-4:  {(trip key)}
              ;div.flex.items-center.space-x-2
                ;span(class "hidden sm:inline-block text-gray-400"): Write and share your own notes
                ;sl-button(href "https://pier.link/apps/grid/search/~dister-nocsyx-lassul/apps/~dister-nocsyx-lassul/scratch", variant "primary", size "small"): install scratch
              ==
            ==
            ;div.flex-1.h-full
              ;+  ?-  view.file
                      %plain
                    ;sl-textarea(name "text", value (trip text.file), readonly "", class "flex-1 part-[base]:h-full part-[textarea]:h-full part-[textarea]:font-mono part-[textarea]:overflow-x-auto part-[textarea]:whitespace-pre-wrap");
                  ::
                      %md
                    ;div(class "prose prose-invert m-4", x-html "marked.parse(window.scratch.text)")
                      ;md-block: {(trip text.file)}
                    ==
                  ==
            ==
          ==
        ==
    ==
  ++  data
    "window.scratch = \{ text: `{norm}` }"
  ::
  --
::
::  fair winds to ye!
--
