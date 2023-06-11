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
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?~  key=(~(get by args) 'key')  ~
  ?~  text=(~(get by args) 'text')  ~
  ?~  act=(~(get by args) 'action')  ~
  ?:  =(u.act 'save')
    [%file u.key u.text %save]
  ?:  =(u.act 'delete')
    [%file u.key u.text %delete]
  ~
++  final
  |=  [trail:rudder rsp=(response:rudder action)]
  ^-  reply:rudder
  ?-  -.rsp  
      %.n  (build [~ /] ~ `[| `@t`msg.rsp])
        %.y  
      :*  %next 
          ?-  action.cmd.rsp
            %save  (spat /[dap.bowl]/[key.cmd.rsp])
            %delete  (spat /[dap.bowl])
          ==
          msg.rsp
      ==
  ==
++  build
  |=  $:  =trail:rudder
          args=(list [k=@t v=@t])
          msg=(unit [gud=? txt=@t])
      ==
  =/  saved  ?~(msg | =(txt.u.msg 'saved'))
  =/  empty  (lte (lent site.trail) 1)
  =/  =key  
      ?:  !empty  (snag 1 site.trail)
      (crip (scag 5 (flop (trip (scot %uv eny.bowl)))))
  =/  file=(unit file)  (~(get by pile) key)
  =/  base  (spud /[dap.bowl])
  =/  text  ?~(file "" (trip text.u.file))
  =/  norm  (scan text (star ;~(pose (cold '\\`' (just '`')) next)))
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    %^  template  q.byk.bowl  "scratch"
    :~  ;script: {data}
        ;main(class "md:flex h-full")
          ;aside(class "hidden md:flex p-4 pr-2 flex-none flex-col h-full space-y-2 min-w-[120px] max-w-[30%]")
            ;+  list
            ;+  new-note
          ==  
          ;sl-drawer(class "block md:hidden", x-ref "drawer", placement "start")
            ;+  new-note
            ;+  list
          ==
          ;section.flex-1.h-full.p-4.pl-2
            ;form.flex.flex-col.h-full.space-y-6(method "post", x-data "\{ og: window.scratch.text, text: window.scratch.text }")
              ;+  %:  mx
                %sl-textarea
                'flex-1 ${tws({ base: "h-full", textarea: "h-full font-mono" })}'
                ~[[%name "text"] [%x-model "text"]]
                ~
              ==
              ;div(class "flex flex-col md:flex-row justify-between gap-4")
                ;+  %:  mx
                  %sl-input
                  'flex-1'
                  %+  welp  ?:(empty ~ ~[[%readonly ""]])
                  :~  [%name "key"]
                      [%size "small"]
                      [%value (trip key)]
                      [%required ""]
                      [%pattern "[\\w.~\\-]*"]
                  ==
                  ;+  ?.  saved
                        ?~  file
                          ;span(slot "help-text"): enter an identifier, will also serve as url
                        ;span;
                      ;div(slot "help-text", class "flex items-center text-green-500 leading-5")
                        ;sl-icon(name "check", class "text-lg");
                        ;span: saved
                      ==
                ==
                ;div.flex.justify-end.items-center.gap-2.self-start
                  ;*  actions
                  ;+  %:  mx
                    %sl-button
                    ''
                    ~[[%':disabled' "og === text"] [%variant "primary"] [%size "small"] [%type "submit"] [%name "action"] [%value "save"]]
                    ;sl-icon(slot "prefix", name "file-earmark-check", class "text-lg");
                    ; save
                  ==
                  ;+  %:  mx
                    %sl-button
                    'md:hidden'
                    ~[[%'@click' "$refs.drawer.show()"] [%variant "secondary"] [%outline ""] [%size "small"] [%type "button"]]
                    ;+  ;sl-icon(name "list", class "text-lg", slot "prefix");
                  ==
                ==
              ==
              ;sl-dialog#delete(label "Delete {(trip key)}", x-ref "delete")
                ; Are you sure you want to delete this note?
                ;div(slot "footer")
                  ;+  %:  mx
                    %sl-button
                    ''
                    ~[[%'@click' "$refs.delete.hide()"] [%variant "text"] [%size "small"] [%type "button"]]
                    ; cancel
                  ==
                  ;sl-button(variant "primary", size "small", type "submit", name "action", value "delete")
                    ;sl-icon(slot "prefix", name "trash", class "text-lg");
                    ; delete
                  ==
                ==
              ==
            ==                    
          ==
        ==
    ==
  ::
  ++  data
    "window.scratch = \{ text: `{norm}` }"
  ::
  ++  list
    ;div.flex-1.overflow-y-auto
      ;*  %+  turn
            ~(tap by pile)
          |=  [key=@t text=@t]
          =/  text  (trip text)
          ;a(href "{base}/{(trip key)}", class "flex flex-col p-2 rounded-md border-2 border-transparent hover:border-sky-500 hover:border-opacity-80 transition-colors {?:(=(key ^key) "bg-gray-700" "")}")
            ;strong: {(trip key)}
            ;span.text-gray-500.truncate: {(welp `tape`(swag [0 48] text) ?:((gte (lent text) 48) "..." ""))}
          ==
    ==
  ::
  ++  new-note
    ;a(href base, class "flex-none flex items-center p-2 rounded-md text-sky-500 border-2 border-transparent hover:border-sky-500 hover:border-opacity-80 transition-colors")
      ;sl-icon(name "file-earmark-plus", class "text-lg text-sky-700 opacity-70 mr-2");
      ;strong: new note
    ==
  ::
  ++  actions
    ^-  marl
    ?:  empty  ~
    :~  %:  mx
          %sl-button
          ''
          :~  [%variant "neutral"]
              [%outline ""] 
              [%size "small"] 
              [%title "Copy URL"]
              [%aria-label "Copy URL"]
              [%'@click' "copy(window.location.toString().replace('/scratch', '/scratch/view'))"]
          ==
          ;+  ;sl-icon(slot "prefix", name "stickies", class "text-lg"); 
        ==
        %:  mx
          %sl-button
          ''
          ~[[%'@click' "$refs.delete.show()"] [%variant "danger"] [%outline ""] [%size "small"] [%aria-label "Delete"]]
          ;+  ;sl-icon(slot "prefix", name "trash", class "text-lg"); 
        ==
    ==
  --
::
::  fair winds to ye!
--