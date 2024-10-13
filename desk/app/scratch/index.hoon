/-  s=scratch, *docket
/+  *ui
/+  rudder, agentio
::
^-  (page:rudder pile:s action:s)
::
|_  $:  =bowl:gall
        =order:rudder
        =pile:s
    ==
+*  io    ~(. agentio bowl)
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action:s)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?~  key=(~(get by args) 'key')  ~
  ?~  text=(~(get by args) 'text')  ~
  ?~  act=(~(get by args) 'action')  ~
  =/  view=@t  (~(gut by args) 'view' 'plain')
  ?~  display=(rush view (perk %plain %md %html ~))  ~
  ?:  =(u.act 'save')
    [%file u.key u.text u.display %save]
  ?:  =(u.act 'delete')
    [%file u.key u.text u.display %delete]
  ~
++  final
  |=  [trail:rudder rsp=(response:rudder action:s)]
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
  =/  =key:s
      ?:  !empty  (snag 1 site.trail)
      (crip (scag 5 (flop (trip (scot %uv eny.bowl)))))
  =/  file=(unit file:s)  (~(get by pile) key)
  =/  base  (spud /[dap.bowl])
  =/  text  ?~(file "" (trip text.u.file))
  =/  norm=tape  (scan text (star ;~(pose (cold '\\`' (just '`')) next)))
  =/  view=view:s  ?~(file %plain view.u.file)
  =/  display=tape  (trip view)
  ^-  reply:rudder
  |^  [%page page |]
  ++  page
    %^  template  q.byk.bowl  ?:(empty "new note | scratch" "{(trip key)} | scratch")
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
            ;form.flex.flex-col.h-full.space-y-6(method "post", x-data "\{ og: window.scratch.text, text: window.scratch.text, view: window.scratch.view, ogview: window.scratch.view }")
              ;div(class "flex-1 h-full")
                ;sl-textarea(class "part-[base]:h-full part-[textarea]:h-full font-mono", x-model "text", name "text");
              ==
              ;div(class "flex flex-col md:flex-row justify-between gap-4")
                ;+  %:  mx
                  %sl-input
                  %+  welp  ?:(empty ~ ~[[%readonly ""]])
                  :~  [%name "key"]
                      [%size "small"]
                      [%class "flex-1"]
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
                ;div.flex.justify-end.items-start.gap-2.self-start
                  ;*  actions
                  ;+  %:  mx
                    %sl-button
                    ~[[%':disabled' "og === text && ogview === view"] [%variant "primary"] [%size "small"] [%type "submit"] [%name "action"] [%value "save"]]
                    ;sl-icon(slot "prefix", name "file-earmark-check", class "text-lg");
                    ; save
                  ==
                  ;+  %:  mx
                    %sl-button
                    ~[[%class "md:hidden"] [%'@click' "$refs.drawer.show()"] [%variant "secondary"] [%outline ""] [%size "small"] [%type "button"]]
                    ;+  ;sl-icon(name "list", class "text-lg", slot "prefix");
                  ==
                ==
              ==
              ;sl-dialog#delete(label "Delete {(trip key)}", x-ref "delete")
                ; Are you sure you want to delete this note?
                ;div(slot "footer")
                  ;+  %:  mx
                    %sl-button
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
    "window.scratch = \{ text: `{norm}`, view: `{display}` }"
  ::
  ++  list
    ;div.flex-1.overflow-y-auto
      ;*  %+  turn
            ~(tap by pile)
          |=  [=key:s =text:s =view:s]
          =/  text  (trip text)
          ;a(href "{base}/{(trip key)}", class "flex flex-col p-2 rounded-md border-2 border-transparent hover:border-sky-500 hover:border-opacity-80 transition-colors {?:(=(key ^key) "bg-gray-700" "")}")
            ;strong: {(trip key)}
            ;span.text-gray-500.truncate: {(welp `tape`(swag [0 48] text) ?:((gte (lent text) 48) "..." ""))}
          ==
    ==
  ::
  ++  new-note
    =/  docket  .^(docket %cx (scry:io q.byk.bowl /desk/docket-0))
    =*  v  version.docket
    ;div.flex.items-center.justify-between.gap-2
      ;a(href base, class "flex-1 flex items-center py-1 px-2 leading-4 rounded-md text-sky-500 border-2 border-transparent hover:border-sky-500 hover:border-opacity-80 transition-colors")
        ;sl-icon(name "file-earmark-plus", class "text-lg text-sky-700 opacity-70 mr-2");
        ;strong: new scratch
      ==
      ;span.flex-none.text-gray-500.font-mono.text-sm: {<major.v>}.{<minor.v>}.{<patch.v>}
    ==
  ::
  ++  display-dropdown
    %:  mx
      %sl-select
      :~  [%size "small"]
          [%name "view"]
          [%value "plain"]
          [%x-model "view"]
          [%x-ref "view"]
          [%'@sl-change' "$refs.view._x_model.set($event.target.value)"]
      ==
      ;=  ;sl-option(value "plain"): plain
          ;sl-option(value "md"): markdown
          ;sl-option(value "html"): html
          ;span(slot "help-text"): view mode
      ==
    ==
  ++  actions
    ^-  marl
    ?:  empty  ~[display-dropdown]
    :~  display-dropdown
        ;sl-button(variant "neutral", outline "", size "small", title "View", aria-label "View", href "/scratch/view/{(trip key)}", target "_blank")
          ;sl-icon(slot "prefix", name "eye", class "text-lg");
        ==
        %:  mx
          %sl-button
          :~  [%variant "neutral"]
              [%outline ""]
              [%size "small"]
              [%title "Copy URL"]
              [%aria-label "Copy URL"]
              [%'@click' "copy(window.location.toString().replace('/scratch', '/scratch/view').replace('?rmsg=saved', ''))"]
          ==
          ;+  ;sl-icon(slot "prefix", name "stickies", class "text-lg");
        ==
        %:  mx
          %sl-button
          ~[[%'@click' "$refs.delete.show()"] [%variant "danger"] [%outline ""] [%size "small"] [%aria-label "Delete"]]
          ;+  ;sl-icon(slot "prefix", name "trash", class "text-lg");
        ==
    ==
  --
::
::  fair winds to ye!
--