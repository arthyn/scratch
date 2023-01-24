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
  [%save u.key u.text]
++  final
  |=  [success=? =brief:rudder]
  ^-  reply:rudder
  ?.  success  (build ~ `[| `@t`brief])
  [%next 'page-example' brief]
++  build
  |=  $:  args=(list [k=@t v=@t])
          msg=(unit [gud=? txt=@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    ^-  manx
    ;html.sl-theme-dark(hidden "")
      ;head
        ;meta(charset "UTF-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1.0");
        ;title: scratch
        ;link(rel "stylesheet", href "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.0.0-beta.82/dist/themes/dark.css");
        ;script(type "module", src "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.0.0-beta.82/dist/shoelace.js");
        ;script(type "module"): {setup-script}
        ;+  (inject:tonic q.byk.bowl)
      ==
      ;+  %:  mx 
            %body
            'h-full text-base font-sans text-gray-100 bg-gray-800'
            ~[[%x-data "twind"]]
            :~  ;main.h-full
                  ;section.h-full.max-w-3xl.mx-auto.px-4.py-4
                    ;form.flex.flex-col.h-full.space-y-6(method "post")
                      ;+  %:  mx
                        %sl-textarea
                        'flex-1 ${tws({ base: "h-full", textarea: "h-full font-mono" })}'
                        ~[[%name "text"]]
                        ~
                      ==
                      ;div.flex.justify-between
                        ;sl-input.flex-1.mr-4(name "key", size "small", help-text "enter an identifier, will also serve as url", value (scag 5 (flop (trip (scot %uv eny.bowl)))));
                        ;+  %:  mx 
                          %sl-button 
                          '${tws({ base: "w-40" })}' 
                          ~[[%variant "primary"] [%size "small"] [%type "submit"]] 
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