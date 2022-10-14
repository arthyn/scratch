/-  *scratch
/+  *mx
/+  rudder, tonic
::
^-  (page:rudder example action)
::
|_  $:  =bowl:gall
        =order:rudder
        =example
    ==
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action)
  [%act ~]
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
  =/  button
    %:  mx 
      %sl-button 
      '${tws({ base: "w-40", label: "text-green-700" })} z-50' 
      ~[[`@tas`'@click' "$refs.dialog.show()"]] 
      ; yo
    ==
  |^  [%page page]
  ++  page
    ^-  manx
    ;html
      ;head
        ;meta(charset "UTF-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1.0");
        ;title: scratch
        ;link(rel "stylesheet", href "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.0.0-beta.82/dist/themes/light.css");
        ;script(type "module", src "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.0.0-beta.82/dist/shoelace.js");
        ;script(type "module"): {setup-script}
        ;+  (inject:tonic q.byk.bowl)
      ==
      ;+  %:  mx 
            %body
            'text-base font-sans text-neutral-900 bg-red-300'
            ~[[%x-data "twind"]]
            :~  ;main
                  ;+  button
                  ;sl-dialog(label "Dialog", x-ref "dialog")
                    ; Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    ;+  %:  mx 
                          %sl-button 
                          '' 
                          ~[[%slot "footer"] [%variant "primary"] [`@tas`'@click' "$refs.dialog.hide()"]]
                          ; Close
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
    import { css } from 'https://cdn.skypack.dev/twind/css'
    import '/session.js';

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