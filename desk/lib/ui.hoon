/+  tonic
/*  head  %js  /lib/ui/head/js
/*  foot  %js  /lib/ui/foot/js
|%
++  mx
  |=  [hed=@tas =mart =marl]
  ^-  manx
  [[hed mart] marl]
::
++  template
  |=  [desk=term title=tape body=marl]
  ^-  manx
  ;html.sl-theme-dark
    ;head
      ;meta(charset "UTF-8");
      ;meta(name "viewport", content "width=device-width, initial-scale=1.0");
      ;title: {title}
      ;link(rel "icon", href "/scratch/~/lib/ui/icon.svg", type "image/svg+xml");
      ;script: {(trip head)}
      :: ;script(src "/session.js");
      :: ;+  (inject:tonic desk)
    ==
    ;body(class "h-full text-base font-sans text-gray-100 bg-gray-800", x-data "helpers")
      ;*  body
    ==
    ;script: {(trip foot)}
  ==
::
--