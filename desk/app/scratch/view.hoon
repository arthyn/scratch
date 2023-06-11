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
    :~  ;main.flex.justify-center.h-full(x-data "\{ url: ''}") 
          ;section.flex.flex-col.w-full.h-full.p-4.pl-2
            ;div.flex.items-center.justify-between.mb-3
              ;h1.font-semibold.text-2xl.ml-4:  {(trip key)}
              ;div.flex.items-center.space-x-2
                ;span(class "hidden sm:inline-block text-gray-400"): Write and share your own notes
                ;+  %:  mx
                  %sl-button
                  ''
                  ~[[%'@click' "$refs.install.show()"] [%variant "primary"] [%size "small"]]
                  ;+  ;/  "install scratch"
                ==
              ==
            ==
            ;+  %:  mx
              %sl-textarea
              'flex-1 ${tws({ base: "h-full", textarea: "h-full font-mono overflow-x-auto whitespace-pre" })}'
              ~[[%name "text"] [%value ?~(file "" (trip text.u.file))] [%readonly ""]]
              ~
            ==
            ;sl-dialog#install(label "Install Scratch", x-ref "install")
                ;sl-input(x-model "url", label "Enter your urbit's URL to install this app", placeholder "http://localhost:8080");
                ;div(slot "footer")
                  ;+  %:  mx
                    %sl-button
                    ''
                    ~[[%'@click' "$refs.install.hide()"] [%variant "text"] [%size "small"] [%type "button"]]
                    ; cancel
                  ==
                  ;+  %:  mx
                    %sl-button
                    ''
                    ~[[%variant "primary"] [%size "small"] [%':href' "`$\{url}/apps/grid/search/~dister-nocsyx-lassul/apps/~dister-nocsyx-lassul/scratch`"] [%':disabled' "url === ''"]]
                    ;sl-icon(slot "suffix", name "arrow-right", class "text-lg");
                    ; go
                  ==
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