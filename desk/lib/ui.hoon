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
      ;link(rel "icon", href "/scratch/icon", type "image/svg+xml");
      ;link(rel "stylesheet", href "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.4.0/dist/themes/dark.css");
      ;script(type "module", src "https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.4.0/dist/shoelace-autoloader.js");
      ;script(type "module"): {setup-script}
      :: ;script(src "/session.js");
      :: ;+  (inject:tonic desk)
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
      tws,
      copy: copyTextToClipboard,
    }));
  });

  function fallbackCopyTextToClipboard(text) {
    var textArea = document.createElement("textarea");
    textArea.value = text;
    
    // Avoid scrolling to bottom
    textArea.style.top = "0";
    textArea.style.left = "0";
    textArea.style.position = "fixed";

    document.body.appendChild(textArea);
    textArea.focus();
    textArea.select();

    try {
      var successful = document.execCommand('copy');
      var msg = successful ? 'successful' : 'unsuccessful';
      console.log('Fallback: Copying text command was ' + msg);
    } catch (err) {
      console.error('Fallback: Oops, unable to copy', err);
    }

    document.body.removeChild(textArea);
  }

  function copyTextToClipboard(text) {
    if (!navigator.clipboard) {
      fallbackCopyTextToClipboard(text);
      return;
    }
    navigator.clipboard.writeText(text).then(function() {
      console.log('Async: Copying to clipboard was successful!');
    }, function(err) {
      console.error('Async: Could not copy text: ', err);
    });
  }

  Alpine.start();
  '''
++  favicon
  '''
  <svg width="242" height="242" viewBox="0 0 242 242" fill="none" xmlns="http://www.w3.org/2000/svg">
    <g clip-path="url(#clip0_2_2)">
    <rect width="242" height="242" rx="48" fill="#0EA5E9"/>
    <path d="M183.874 167.051C177.346 161.646 179.26 130.664 179.26 130.664C180.09 111.645 182.893 76.1384 176.956 74.9323C168.294 73.5088 154.343 121.057 149.125 140.244C146.766 148.911 144.728 156.399 142.916 161.535C142.157 163.683 140.346 165.263 138.15 165.7C135.942 166.135 133.687 165.36 132.197 163.661C130.472 161.698 127.417 158.219 126.572 96.145C116.718 117.119 102.509 150.256 94.5149 173.07C93.4637 176.06 90.4338 177.831 87.3803 177.259C84.3143 176.688 82.1108 173.936 82.1725 170.764C82.1725 170.764 90.7317 79.8805 83.3075 78.5402C75.3383 77.2509 51.5763 135.267 43.4876 157.914C36.0029 178.867 35.1346 181.56 29.4356 181.449C26.4412 181.384 23.8989 179.201 23.3284 176.209C17.4623 145.364 19.088 114.278 22.3654 83.7438C8.46852 110.005 -3.93251 146.004 -11.4703 167.883C-18.3706 187.911 -20.0824 191.18 -24.5695 191.18C-31.1903 191.18 -31.3752 185.954 -31.3752 185.954C-33.063 152.739 -34.34 119.109 -35.1859 85.6793C-50.3883 115.084 -61.1516 146.497 -67.2552 179.347C-67.911 182.86 -71.2441 185.163 -74.6835 184.505C-78.1327 183.837 -80.4008 180.452 -79.748 176.94C-71.9401 134.94 -56.8024 95.2031 -34.7593 58.8325C-33.2745 56.3868 -30.3853 55.2417 -27.6752 55.987C-24.9554 56.7446 -23.049 59.2343 -22.9964 62.1045C-22.4078 92.6009 -21.4494 123.388 -20.1418 153.988C-9.29912 122.83 8.19941 75.2583 27.1023 53.0529C28.9352 50.8985 31.9346 50.2199 34.4981 51.383C37.0552 52.5433 38.562 55.2756 38.2121 58.1037C34.4484 88.384 30.5833 119.479 32.7717 150.046C41.7214 125.041 54.7564 89.6942 69.8731 73.1096C76.3391 66.0273 84.057 63.9032 89.9996 67.5628C96.8512 71.7701 96.6762 80.5855 96.6116 83.9039L95.5912 135.311C107.634 105.89 124.053 68.7027 129.888 66.0145C131.46 65.2923 133.473 65.2242 135.076 65.8736C137.489 66.8474 139.076 69.2216 139.085 71.8661C139.158 92.2366 139.504 110.801 140.034 125.352C150.235 89.1869 160.152 62.7085 176.761 61.9637L176.777 61.963C180.169 61.8109 183.257 63.0486 185.707 65.5393C194.013 73.9965 193.493 96.0135 191.959 131.237C191.674 137.792 191.387 144.382 191.211 150.73C191.119 154.116 191.028 157.518 192.643 157.679C199.478 158.364 223.114 119.021 248.773 117.853C259.336 116.787 289.482 116.384 311.33 119.155C306.946 115.325 303.02 111.22 297.355 105.263L293.248 100.955C290.801 98.3947 290.854 94.2954 293.368 91.8004C295.885 89.3054 299.606 89.5025 302.357 91.9225C302.357 91.9225 319.597 109.962 338.18 122.49C340.672 124.17 341.277 125.873 341.216 128.188C341.151 130.503 339.882 132.607 337.879 133.709C337.879 133.709 305.047 153.206 298.602 158.543C298.602 158.543 293.725 162.005 289.713 157.199C287.116 154.089 288.211 150.274 291.033 148.145C302.478 139.502 307.247 136.124 313.402 132.511C292.754 129.443 263.533 129.32 250.063 130.735C237.461 132.043 223.764 146.053 213.759 156.28C213.759 156.28 196.102 177.176 183.874 167.051Z" fill="#082F49"/>
    </g>
    <defs>
    <clipPath id="clip0_2_2">
    <rect width="242" height="242" rx="48" fill="white"/>
    </clipPath>
    </defs>
  </svg>
  '''
--