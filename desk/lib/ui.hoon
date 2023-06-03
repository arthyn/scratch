/+  tonic
|%
++  mx
  |=  [hed=@tas class=@t =mart =marl]
  ^-  manx
  [[hed (welp ~[[`@tas`':class' "tw`{(trip class)}`"]] mart)] marl]
::
++  template
  |=  [desk=term title=tape body=marl]
  ^-  manx
  ;html.sl-theme-dark(hidden "")
    ;head
      ;meta(charset "UTF-8");
      ;meta(name "viewport", content "width=device-width, initial-scale=1.0");
      ;title: {title}
      ;link(rel "stylesheet", href "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.4.0/dist/themes/dark.css");
      ;script(type "module", src "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.4.0/dist/shoelace-autoloader.js");
      ;script(type "module"): {setup-script}
      ;script(src "/session.js");
      ;+  (inject:tonic desk)
    ==
    ;+  %:  mx 
          %body
          'h-full text-base font-sans text-gray-100 bg-gray-800'
          ~[[%x-data "twind"]]
          body
        ==
    ::
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