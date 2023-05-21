/-  *scratch
/+  *mx
/+  rudder, tonic
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
  ~&  ['page load' trail args msg saved file]
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    ^-  manx
    ;html.sl-theme-dark(hidden "")
      ;head
        ;meta(charset "UTF-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1.0");
        ;title: scratch
        ;link(rel "stylesheet", href "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.4.0/dist/themes/dark.css");
        ;script(type "module", src "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.4.0/dist/shoelace-autoloader.js");
        ;script(type "module"): {setup-script}
        ;+  (inject:tonic q.byk.bowl)
      ==
      ;+  %:  mx 
            %body
            'h-full text-base font-sans text-gray-100 bg-gray-800'
            ~[[%x-data "twind"]]
            :~  ;main.flex.h-full
                  ;aside(class "flex-none h-full space-y-2 p-4 pr-2 min-w-[120px]")
                  ;*  %+  turn
                        ~(tap by pile)
                      |=  [key=@t text=@t]
                      =/  text  (trip text)
                      ;a(href "{base}/{(trip key)}", class "flex flex-col p-2 rounded-md hover:bg-gray-700 transition-colors")
                        ;strong: {(trip key)}
                        ;span.text-gray-500: {(welp `tape`(swag [0 48] text) ?:((gte (lent text) 48) "..." ""))}
                      ==   
                  ;a(href base, class "flex items-center p-2 rounded-md hover:bg-gray-700 transition-colors")
                        ;sl-icon(name "file-earmark-plus", class "text-lg text-gray-500 mr-2");
                        ;strong: new note
                      ==  
                  ==               
                  ;section.flex-1.h-full.p-4.pl-2
                    ;form.flex.flex-col.h-full.space-y-6(method "post")
                      ;+  %:  mx
                        %sl-textarea
                        'flex-1 ${tws({ base: "h-full", textarea: "h-full font-mono" })}'
                        ~[[%name "text"] [%value ?~(file "" (trip text.u.file))]]
                        ~
                      ==
                      ;div.flex.justify-between
                        ;sl-input.flex-1.mr-4(name "key", size "small", value (trip key), readonly ?:(empty "false" "true"))
                          ;+  ?.  saved
                                ?~  file
                                  ;span(slot "help-text"): enter an identifier, will also serve as url
                                ;span;
                              ;div(slot "help-text", class "flex items-center text-green-500 leading-5")
                                ;sl-icon(name "check", class "text-lg");
                                ;span: saved
                              ==
                        ==
                        ;sl-button.mr-2(name "action", value "delete", variant "danger", outline "", size "small", aria-label "Delete", type "submit")
                          ;sl-icon(slot "prefix", name "trash", class "text-lg"); 
                        ==
                        ;sl-button(variant "primary", outline "", size "small", type "submit", name "action", value "save")
                          ;sl-icon(slot "prefix", name "file-earmark-check", class "text-lg");
                          ; save
                        ==
                      ==
                    ==
                  ==
                ==
            ==
          ==
    ==
  ::
  ++  setup-script
    ^~
    %-  trip
    '''
    import alpineTurboDriveAdapter from 'https://cdn.skypack.dev/alpine-turbo-drive-adapter';
    import hotwiredTurbo from 'https://cdn.skypack.dev/@hotwired/turbo@7.1';
    import Alpine from 'https://cdn.skypack.dev/alpinejs@3.x.x'
    import { tw, apply, setup } from 'https://cdn.skypack.dev/twind'
    import * as colors from 'https://cdn.skypack.dev/twind/colors'
    import { css } from 'https://cdn.skypack.dev/twind/css'
    import 'https://cdn.skypack.dev/twind/shim'
    import '/session.js';


    setup({
      theme: {
        extend: {
          colors,
        },
      },
    })

    window.Alpine = Alpine;
    const tws = (parts) => {
      const styles = Object.entries(parts).reduce((obj, [part, value]) => {
        obj[`&::part(${part})`] = css(apply(value))

        return obj;
      }, {});
      return () => styles;
    } 

    document.addEventListener('alpine:init', () => {
      Alpine.data('twind', () => ({ 
        tw,
        tws
      }));
    });

    Alpine.start();
    '''
  --
::
::  fair winds to ye!
--