/+  c=twind-colors
::  pulled from https://github.com/tailwindlabs/tailwindcss/blob/4fed060b7c295d3115d73783278f03e2fbcbbb27/stubs/defaultConfig.stub.js
|%
++  screens
  %-  malt
  :~  ['sm' '640px']
      ['md' '768px']
      ['lg' '1024px']
      ['xl' '1280px']
      ['2xl' '1536px']
  ==
++  colors
  %-  malt
  :~  ['inherit' inherit.c]
      ['current' current.c]
      ['transparent' transparent.c]
      ['black' black.c]
      ['white' white.c]
      ['slate' slate.c]
      ['gray' gray.c]
      ['zinc' zinc.c]
      ['neutral' neutral.c]
      ['stone' stone.c]
      ['red' red.c]
      ['orange' orange.c]
      ['amber' amber.c]
      ['yellow' yellow.c]
      ['lime' lime.c]
      ['green' green.c]
      ['emerald' emerald.c]
      ['teal' teal.c]
      ['cyan' cyan.c]
      ['sky' sky.c]
      ['blue' blue.c]
      ['indigo' indigo.c]
      ['violet' violet.c]
      ['purple' purple.c]
      ['fuchsia' fuchsia.c]
      ['pink' pink.c]
      ['rose' rose.c]
  ==
++  columns
  %-  malt
  :~  ['auto' 'auto']
      ['1' '1']
      ['2' '2']
      ['3' '3']
      ['4' '4']
      ['5' '5']
      ['6' '6']
      ['7' '7']
      ['8' '8']
      ['9' '9']
      ['10' '10']
      ['11' '11']
      ['12' '12']
      ['3xs' '16rem']
      ['2xs' '18rem']
      ['xs' '20rem']
      ['sm' '24rem']
      ['md' '28rem']
      ['lg' '32rem']
      ['xl' '36rem']
      ['2xl' '42rem']
      ['3xl' '48rem']
      ['4xl' '56rem']
      ['5xl' '64rem']
      ['6xl' '72rem']
      ['7xl' '80rem']
  ==
++  spacing
  %-  malt
  :~  ['px' '1px']
      ['0' '0px']
      ['0.5' '0.125rem']
      ['1' '0.25rem']
      ['1.5' '0.375rem']
      ['2' '0.5rem']
      ['2.5' '0.625rem']
      ['3' '0.75rem']
      ['3.5' '0.875rem']
      ['4' '1rem']
      ['5' '1.25rem']
      ['6' '1.5rem']
      ['7' '1.75rem']
      ['8' '2rem']
      ['9' '2.25rem']
      ['10' '2.5rem']
      ['11' '2.75rem']
      ['12' '3rem']
      ['14' '3.5rem']
      ['16' '4rem']
      ['20' '5rem']
      ['24' '6rem']
      ['28' '7rem']
      ['32' '8rem']
      ['36' '9rem']
      ['40' '10rem']
      ['44' '11rem']
      ['48' '12rem']
      ['52' '13rem']
      ['56' '14rem']
      ['60' '15rem']
      ['64' '16rem']
      ['72' '18rem']
      ['80' '20rem']
      ['96' '24rem']
  ==
++  animation
  %-  malt
  :~  ['none' 'none']
      ['spin' 'spin 1s linear infinite']
      ['ping' 'ping 1s cubic-bezier(0, 0, 0.2, 1) infinite']
      ['pulse' 'pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite']
      ['bounce' 'bounce 1s infinite']
  ==
++  aspect-ratio
  %-  malt
  :~  ['auto' 'auto']
      ['square' '1 / 1']
      ['video' '16 / 9']
  ==
++  backdrop-blur  blur
++  backdrop-brightness  brightness
++  backdrop-contrast  contrast
++  backdrop-grayscale  grayscale
++  backdrop-hue-rotate  hue-rotate
++  backdrop-invert  invert
++  backdrop-opacity  opacity
++  backdrop-saturate  saturate
++  backdrop-sepia  sepia
++  background-color  colors
++  background-image
  %-  malt
  :~  ['none' 'none']
      ['gradient-to-t' 'linear-gradient(to top, var(-tw-gradient-stops))']
      ['gradient-to-tr' 'linear-gradient(to top right, var(-tw-gradient-stops))']
      ['gradient-to-r' 'linear-gradient(to right, var(-tw-gradient-stops))']
      ['gradient-to-br' 'linear-gradient(to bottom right, var(-tw-gradient-stops))']
      ['gradient-to-b' 'linear-gradient(to bottom, var(-tw-gradient-stops))']
      ['gradient-to-bl' 'linear-gradient(to bottom left, var(-tw-gradient-stops))']
      ['gradient-to-l' 'linear-gradient(to left, var(-tw-gradient-stops))']
      ['gradient-to-tl' 'linear-gradient(to top left, var(-tw-gradient-stops))']
  ==
++  background-opacity  opacity
++  background-position
  %-  malt
  :~  ['bottom' 'bottom']
      ['center' 'center']
      ['left' 'left']
      ['left-bottom' 'left bottom']
      ['left-top' 'left top']
      ['right' 'right']
      ['right-bottom' 'right bottom']
      ['right-top' 'right top']
      ['top' 'top']
  ==
++  background-size
  %-  malt
  :~  ['auto' 'auto']
      ['cover' 'cover']
      ['contain' 'contain']
  ==
++  blur
  %-  malt
  :~  ['0' '0']
      ['none' '0']
      ['sm' '4px']
      ['DEFAULT' '8px']
      ['md' '12px']
      ['lg' '16px']
      ['xl' '24px']
      ['2xl' '40px']
      ['3xl' '64px']
  ==
++  brightness
  %-  malt
  :~  ['0' '0']
      ['50' '.5']
      ['75' '.75']
      ['90' '.9']
      ['95' '.95']
      ['100' '1']
      ['105' '1.05']
      ['110' '1.1']
      ['125' '1.25']
      ['150' '1.5']
      ['200' '2']
  ==
++  border-color
  =/  default  (~(got by (~(got by colors) 'gray')) '200')
  (~(put by colors) 'DEFAULT' default)
++  border-opacity  opacity
++  border-radius
  %-  malt
  :~  ['none' '0px']
      ['sm' '0.125rem']
      ['DEFAULT' '0.25rem']
      ['md' '0.375rem']
      ['lg' '0.5rem']
      ['xl' '0.75rem']
      ['2xl' '1rem']
      ['3xl' '1.5rem']
      ['full' '9999px']
  ==
++  border-spacing  spacing
++  border-width
  %-  malt
  :~  ['DEFAULT' '1px']
      ['0' '0px']
      ['2' '2px']
      ['4' '4px']
      ['8' '8px']
  ==
++  box-shadow
  %-  malt
  :~  ['sm' '0 1px 2px 0 rgb(0 0 0 / 0.05)']
      ['DEFAULT' '0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1)']
      ['md' '0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1)']
      ['lg' '0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1)']
      ['xl' '0 20px 25px -5px rgb(0 0 0 / 0.1), 0 8px 10px -6px rgb(0 0 0 / 0.1)']
      ['2xl' '0 25px 50px -12px rgb(0 0 0 / 0.25)']
      ['inner' 'inset 0 2px 4px 0 rgb(0 0 0 / 0.05)']
      ['none' 'none']
  ==
++  box-shadow-color  colors
++  caret-color  colors
++  accent-color
  (~(put by colors) 'auto' 'auto')
++  contrast
  %-  malt
  :~  ['0' '0']
      ['50' '.5']
      ['75' '.75']
      ['100' '1']
      ['125' '1.25']
      ['150' '1.5']
      ['200' '2']
  ==
++  container
++  content
  %-  malt
  :~  ['none' 'none']
  ==
++  cursor
  %-  malt
  :~  ['auto' 'auto']
      ['default' 'default']
      ['pointer' 'pointer']
      ['wait' 'wait']
      ['text' 'text']
      ['move' 'move']
      ['help' 'help']
      ['not-allowed' 'not-allowed']
      ['none' 'none']
      ['context-menu' 'context-menu']
      ['progress' 'progress']
      ['cell' 'cell']
      ['crosshair' 'crosshair']
      ['vertical-text' 'vertical-text']
      ['alias' 'alias']
      ['copy' 'copy']
      ['no-drop' 'no-drop']
      ['grab' 'grab']
      ['grabbing' 'grabbing']
      ['all-scroll' 'all-scroll']
      ['col-resize' 'col-resize']
      ['row-resize' 'row-resize']
      ['n-resize' 'n-resize']
      ['e-resize' 'e-resize']
      ['s-resize' 's-resize']
      ['w-resize' 'w-resize']
      ['ne-resize' 'ne-resize']
      ['nw-resize' 'nw-resize']
      ['se-resize' 'se-resize']
      ['sw-resize' 'sw-resize']
      ['ew-resize' 'ew-resize']
      ['ns-resize' 'ns-resize']
      ['nesw-resize' 'nesw-resize']
      ['nwse-resize' 'nwse-resize']
      ['zoom-in' 'zoom-in']
      ['zoom-out' 'zoom-out']
  ==
++  divide-color  border-color
++  divide-opacity  border-opacity
++  divide-width  border-width
++  drop-shadow
  ^-  (map @t (list @t))
  %-  malt
  :~  ['sm' ~['0 1px 1px rgb(0 0 0 / 0.05)']]
      ['DEFAULT' ~['0 1px 2px rgb(0 0 0 / 0.1)' '0 1px 1px rgb(0 0 0 / 0.06)']]
      ['md' ~['0 4px 3px rgb(0 0 0 / 0.07)' '0 2px 2px rgb(0 0 0 / 0.06)']]
      ['lg' ~['0 10px 8px rgb(0 0 0 / 0.04)' '0 4px 3px rgb(0 0 0 / 0.1)']]
      ['xl' ~['0 20px 13px rgb(0 0 0 / 0.03)' '0 8px 5px rgb(0 0 0 / 0.08)']]
      ['2xl' ~['0 25px 25px rgb(0 0 0 / 0.15)']]
      ['none' ~['0 0 #0000']]
  ==
++  fill  colors
++  grayscale
  %-  malt
  :~  ['0' '0']
      ['DEFAULT' '100%']
  ==
++  hue-rotate
  %-  malt
  :~  ['0' '0deg']
      ['15' '15deg']
      ['30' '30deg']
      ['60' '60deg']
      ['90' '90deg']
      ['180' '180deg']
  ==
++  invert
  %-  malt
  :~  ['0' '0']
      ['DEFAULT' '100%']
  ==
++  flex
  %-  malt
  :~  ['1' '1 1 0%']
      ['auto' '1 1 auto']
      ['initial' '0 1 auto']
      ['none' 'none']
  ==
++  flex-basis
  %-  ~(uni by spacing)
  %-  malt
  :~  ['auto' 'auto']
      ['1/2' '50%']
      ['1/3' '33.333333%']
      ['2/3' '66.666667%']
      ['1/4' '25%']
      ['2/4' '50%']
      ['3/4' '75%']
      ['1/5' '20%']
      ['2/5' '40%']
      ['3/5' '60%']
      ['4/5' '80%']
      ['1/6' '16.666667%']
      ['2/6' '33.333333%']
      ['3/6' '50%']
      ['4/6' '66.666667%']
      ['5/6' '83.333333%']
      ['1/12' '8.333333%']
      ['2/12' '16.666667%']
      ['3/12' '25%']
      ['4/12' '33.333333%']
      ['5/12' '41.666667%']
      ['6/12' '50%']
      ['7/12' '58.333333%']
      ['8/12' '66.666667%']
      ['9/12' '75%']
      ['10/12' '83.333333%']
      ['11/12' '91.666667%']
      ['full' '100%']
  ==
++  flex-grow
  %-  malt
  :~  ['0' '0']
      ['DEFAULT' '1']
  ==
++  flex-shrink
  %-  malt
  :~  ['0' '0']
      ['DEFAULT' '1']
  ==
++  font-family
  ^-  (map @t (list @t))
  %-  malt
  :~  :-  'sans'
      :~  'ui-sans-serif'
          'system-ui' 
          '-apple-system' 
          'BlinkMacSystemFont' 
          '"Segoe UI"' 
          'Roboto' 
          '"Helvetica Neue"' 
          'Arial' 
          '"Noto Sans"' 
          'sans-serif' 
          '"Apple Color Emoji"' 
          '"Segoe UI Emoji"' 
          '"Segoe UI Symbol"' 
          '"Noto Color Emoji"'
      ==  
      :-  'serif'
      :~  'ui-serif'
          'Georgia'
          'Cambria'
          '"Times New Roman"'
          'Times'
          'serif'
      ==
      :-  'mono'
      :~  'ui-monospace' 
          'SFMono-Regular' 
          'Menlo' 
          'Monaco' 
          'Consolas' 
          '"Liberation Mono"' 
          '"Courier New"' 
          'monospace' 
      ==
  == 
++  font-size
  ^-  (map @t [@t @t])
  %-  malt
  :~  ['xs' ['0.75rem' '1rem']]
      ['sm' ['0.875rem' '1.25rem']]
      ['base' ['1rem' '1.5rem']]
      ['lg' ['1.125rem' '1.75rem']]
      ['xl' ['1.25rem' '1.75rem']]
      ['2xl' ['1.5rem' '2rem']]
      ['3xl' ['1.875rem' '2.25rem']]
      ['4xl' ['2.25rem' '2.5rem']]
      ['5xl' ['3rem' '1']]
      ['6xl' ['3.75rem' '1']]
      ['7xl' ['4.5rem' '1']]
      ['8xl' ['6rem' '1']]
      ['9xl' ['8rem' '1']]
  ==
++  font-weight
  %-  malt
  :~  ['thin' '100']
      ['extralight' '200']
      ['light' '300']
      ['normal' '400']
      ['medium' '500']
      ['semibold' '600']
      ['bold' '700']
      ['extrabold' '800']
      ['black' '900']
  ==
++  gap  spacing
++  gradient-color-stops  colors
++  grid-auto-columns
  %-  malt
  :~  ['auto' 'auto']
      ['min' 'min-content']
      ['max' 'max-content']
      ['fr' 'minmax(0, 1fr)']
  ==
++  grid-auto-rows
  %-  malt
  :~  ['auto' 'auto']
      ['min' 'min-content']
      ['max' 'max-content']
      ['fr' 'minmax(0, 1fr)']
  ==
++  grid-column
  %-  malt
  :~  ['auto' 'auto']
      ['span-1' 'span 1 / span 1']
      ['span-2' 'span 2 / span 2']
      ['span-3' 'span 3 / span 3']
      ['span-4' 'span 4 / span 4']
      ['span-5' 'span 5 / span 5']
      ['span-6' 'span 6 / span 6']
      ['span-7' 'span 7 / span 7']
      ['span-8' 'span 8 / span 8']
      ['span-9' 'span 9 / span 9']
      ['span-10' 'span 10 / span 10']
      ['span-11' 'span 11 / span 11']
      ['span-12' 'span 12 / span 12']
      ['span-full' '1 / -1']
  ==
++  grid-column-end
  %-  malt
  :~  ['auto' 'auto']
      ['1' '1']
      ['2' '2']
      ['3' '3']
      ['4' '4']
      ['5' '5']
      ['6' '6']
      ['7' '7']
      ['8' '8']
      ['9' '9']
      ['10' '10']
      ['11' '11']
      ['12' '12']
      ['13' '13']
  ==
++  grid-column-start
  %-  malt
  :~  ['auto' 'auto']
      ['1' '1']
      ['2' '2']
      ['3' '3']
      ['4' '4']
      ['5' '5']
      ['6' '6']
      ['7' '7']
      ['8' '8']
      ['9' '9']
      ['10' '10']
      ['11' '11']
      ['12' '12']
      ['13' '13']
  ==
++  grid-row
  %-  malt
  :~  ['auto' 'auto']
      ['span-1' 'span 1 / span 1']
      ['span-2' 'span 2 / span 2']
      ['span-3' 'span 3 / span 3']
      ['span-4' 'span 4 / span 4']
      ['span-5' 'span 5 / span 5']
      ['span-6' 'span 6 / span 6']
      ['span-full' '1 / -1']
  ==
++  grid-row-start
  %-  malt
  :~  ['auto' 'auto']
      ['1' '1']
      ['2' '2']
      ['3' '3']
      ['4' '4']
      ['5' '5']
      ['6' '6']
      ['7' '7']
  ==
++  grid-row-end
  %-  malt
  :~  ['auto' 'auto']
      ['1' '1']
      ['2' '2']
      ['3' '3']
      ['4' '4']
      ['5' '5']
      ['6' '6']
      ['7' '7']
  ==
++  grid-template-columns
  %-  malt
  :~  ['none' 'none']
      ['1' 'repeat(1, minmax(0, 1fr))']
      ['2' 'repeat(2, minmax(0, 1fr))']
      ['3' 'repeat(3, minmax(0, 1fr))']
      ['4' 'repeat(4, minmax(0, 1fr))']
      ['5' 'repeat(5, minmax(0, 1fr))']
      ['6' 'repeat(6, minmax(0, 1fr))']
      ['7' 'repeat(7, minmax(0, 1fr))']
      ['8' 'repeat(8, minmax(0, 1fr))']
      ['9' 'repeat(9, minmax(0, 1fr))']
      ['10' 'repeat(10, minmax(0, 1fr))']
      ['11' 'repeat(11, minmax(0, 1fr))']
      ['12' 'repeat(12, minmax(0, 1fr))']
  ==
++  grid-template-rows
  %-  malt
  :~  ['none' 'none']
      ['1' 'repeat(1, minmax(0, 1fr))']
      ['2' 'repeat(2, minmax(0, 1fr))']
      ['3' 'repeat(3, minmax(0, 1fr))']
      ['4' 'repeat(4, minmax(0, 1fr))']
      ['5' 'repeat(5, minmax(0, 1fr))']
      ['6' 'repeat(6, minmax(0, 1fr))']
  ==
++  height
  %-  ~(uni by spacing)
  %-  malt
  :~  ['auto' 'auto']
      ['1/2' '50%']
      ['1/3' '33.333333%']
      ['2/3' '66.666667%']
      ['1/4' '25%']
      ['2/4' '50%']
      ['3/4' '75%']
      ['1/5' '20%']
      ['2/5' '40%']
      ['3/5' '60%']
      ['4/5' '80%']
      ['1/6' '16.666667%']
      ['2/6' '33.333333%']
      ['3/6' '50%']
      ['4/6' '66.666667%']
      ['5/6' '83.333333%']
      ['full' '100%']
      ['screen' '100vh']
      ['min' 'min-content']
      ['max' 'max-content']
      ['fit' 'fit-content']
  ==
++  inset
  %-  ~(uni by spacing)
  %-  malt
  :~  ['auto' 'auto']
      ['1/2' '50%']
      ['1/3' '33.333333%']
      ['2/3' '66.666667%']
      ['1/4' '25%']
      ['2/4' '50%']
      ['3/4' '75%']
      ['full' '100%']
  ==
++  keyframes
++  -  spin
++  -    to
      ['transform' 'rotate(360deg)']
    
  
++  -  ping
++  -    '75%, 100%'
      ['transform' 'scale(2)']
      ['opacity' '0']
    
  
++  -  pulse
++  -    '50%'
      ['opacity' '.5']
    
  
++  -  bounce
++  -    '0%, 100%'
      ['transform' 'translateY(-25%)']
      ['animationTimingFunction' 'cubic-bezier(0.8,0,1,1)']
    
++  -    '50%'
      ['transform' 'none']
      ['animationTimingFunction' 'cubic-bezier(0,0,0.2,1)']
    
  
++  letter-spacing
  %-  malt
  :~  ['tighter' '-0.05em']
      ['tight' '-0.025em']
      ['normal' '0em']
      ['wide' '0.025em']
      ['wider' '0.05em']
      ['widest' '0.1em']
  ==
++  line-height
  %-  malt
  :~  ['none' '1']
      ['tight' '1.25']
      ['snug' '1.375']
      ['normal' '1.5']
      ['relaxed' '1.625']
      ['loose' '2']
      ['3' '.75rem']
      ['4' '1rem']
      ['5' '1.25rem']
      ['6' '1.5rem']
      ['7' '1.75rem']
      ['8' '2rem']
      ['9' '2.25rem']
      ['10' '2.5rem']
  ==
++  list-style-type
  %-  malt
  :~  ['none' 'none']
      ['disc' 'disc']
      ['decimal' 'decimal']
  ==
++  margin
  (~(put by spacing) 'auto' 'auto')
++  max-height
  %-  ~(uni by spacing)
  %-  malt
  :~  ['full' '100%']
      ['screen' '100vh']
      ['min' 'min-content']
      ['max' 'max-content']
      ['fit' 'fit-content']
  ==
++  max-width
  %-  ~(uni by screens)
  %-  malt
  :~  ['none' 'none']
      ['0' '0rem']
      ['xs' '20rem']
      ['sm' '24rem']
      ['md' '28rem']
      ['lg' '32rem']
      ['xl' '36rem']
      ['2xl' '42rem']
      ['3xl' '48rem']
      ['4xl' '56rem']
      ['5xl' '64rem']
      ['6xl' '72rem']
      ['7xl' '80rem']
      ['full' '100%']
      ['min' 'min-content']
      ['max' 'max-content']
      ['fit' 'fit-content']
      ['prose' '65ch']
  ==
++  min-height
  %-  malt
  :~  ['0' '0px']
      ['full' '100%']
      ['screen' '100vh']
      ['min' 'min-content']
      ['max' 'max-content']
      ['fit' 'fit-content']
  ==
++  min-width
  %-  malt
  :~  ['0' '0px']
      ['full' '100%']
      ['min' 'min-content']
      ['max' 'max-content']
      ['fit' 'fit-content']
  ==
++  object-position
  %-  malt
  :~  ['bottom' 'bottom']
      ['center' 'center']
      ['left' 'left']
      ['left-bottom' 'left bottom']
      ['left-top' 'left top']
      ['right' 'right']
      ['right-bottom' 'right bottom']
      ['right-top' 'right top']
      ['top' 'top']
  ==
++  opacity
  %-  malt
  :~  ['0' '0']
      ['5' '0.05']
      ['10' '0.1']
      ['20' '0.2']
      ['25' '0.25']
      ['30' '0.3']
      ['40' '0.4']
      ['50' '0.5']
      ['60' '0.6']
      ['70' '0.7']
      ['75' '0.75']
      ['80' '0.8']
      ['90' '0.9']
      ['95' '0.95']
      ['100' '1']
  ==
++  order
  %-  malt
  :~  ['first' '-9999']
      ['last' '9999']
      ['none' '0']
      ['1' '1']
      ['2' '2']
      ['3' '3']
      ['4' '4']
      ['5' '5']
      ['6' '6']
      ['7' '7']
      ['8' '8']
      ['9' '9']
      ['10' '10']
      ['11' '11']
      ['12' '12']
  ==
++  padding  spacing
++  placeholder-color  colors
++  placeholder-opacity  opacity
++  outline-color  colors
++  outline-offset
  %-  malt
  :~  ['0' '0px']
      ['1' '1px']
      ['2' '2px']
      ['4' '4px']
      ['8' '8px']
  ==
++  outline-width
  %-  malt
  :~  ['0' '0px']
      ['1' '1px']
      ['2' '2px']
      ['4' '4px']
      ['8' '8px']
  ==
++  ring-color
  =/  default  (~(got by (~(got by colors) 'blue')) '500')
  (~(put by colors) 'DEFAULT' default)
++  ring-offset-color  colors
++  ring-offset-width
  %-  malt
  :~  ['0' '0px']
      ['1' '1px']
      ['2' '2px']
      ['4' '4px']
      ['8' '8px']
  ==
++  ring-opacity
  (~(put by opacity) 'DEFAULT' '0.5')
++  ring-width
  %-  malt
  :~  ['DEFAULT' '3px']
      ['0' '0px']
      ['1' '1px']
      ['2' '2px']
      ['4' '4px']
      ['8' '8px']
  ==
++  rotate
  %-  malt
  :~  ['0' '0deg']
      ['1' '1deg']
      ['2' '2deg']
      ['3' '3deg']
      ['6' '6deg']
      ['12' '12deg']
      ['45' '45deg']
      ['90' '90deg']
      ['180' '180deg']
  ==
++  saturate
  %-  malt
  :~  ['0' '0']
      ['50' '.5']
      ['100' '1']
      ['150' '1.5']
      ['200' '2']
  ==
++  scale
  %-  malt
  :~  ['0' '0']
      ['50' '.5']
      ['75' '.75']
      ['90' '.9']
      ['95' '.95']
      ['100' '1']
      ['105' '1.05']
      ['110' '1.1']
      ['125' '1.25']
      ['150' '1.5']
  ==
++  scroll-margin  spacing
++  scroll-padding  spacing
++  sepia
  %-  malt
  :~  ['0' '0']
      ['DEFAULT' '100%']
  ==
++  skew
  %-  malt
  :~  ['0' '0deg']
      ['1' '1deg']
      ['2' '2deg']
      ['3' '3deg']
      ['6' '6deg']
      ['12' '12deg']
  ==
++  space  spacing
++  stroke  colors
++  stroke-width
  %-  malt
  :~  ['0' '0']
      ['1' '1']
      ['2' '2']
  ==
++  text-color  colors
++  text-decoration-color  colors
++  text-decoration-thickness
  %-  malt
  :~  ['auto' 'auto']
      ['from-font' 'from-font']
      ['0' '0px']
      ['1' '1px']
      ['2' '2px']
      ['4' '4px']
      ['8' '8px']
  ==
++  text-underline-offset
  %-  malt
  :~  ['auto' 'auto']
      ['0' '0px']
      ['1' '1px']
      ['2' '2px']
      ['4' '4px']
      ['8' '8px']
  ==
++  text-indent  spacing
++  text-opacity  opacity
++  transform-origin
  %-  malt
  :~  ['center' 'center']
      ['top' 'top']
      ['top-right' 'top right']
      ['right' 'right']
      ['bottom-right' 'bottom right']
      ['bottom' 'bottom']
      ['bottom-left' 'bottom left']
      ['left' 'left']
      ['top-left' 'top left']
  ==
++  transition-delay
  %-  malt
  :~  ['75' '75ms']
      ['100' '100ms']
      ['150' '150ms']
      ['200' '200ms']
      ['300' '300ms']
      ['500' '500ms']
      ['700' '700ms']
      ['1000' '1000ms']
  ==
++  transition-duration
  %-  malt
  :~  ['DEFAULT' '150ms']
      ['75' '75ms']
      ['100' '100ms']
      ['150' '150ms']
      ['200' '200ms']
      ['300' '300ms']
      ['500' '500ms']
      ['700' '700ms']
      ['1000' '1000ms']
  ==
++  transition-property
  %-  malt
  :~  ['none' 'none']
      ['all' 'all']
      ['DEFAULT' 'color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter']
      ['colors' 'color, background-color, border-color, text-decoration-color, fill, stroke']
      ['opacity' 'opacity']
      ['shadow' 'box-shadow']
      ['transform' 'transform']
  ==
++  transition-timing-function
  %-  malt
  :~  ['DEFAULT' 'cubic-bezier(0.4, 0, 0.2, 1)']
      ['linear' 'linear']
      ['in' 'cubic-bezier(0.4, 0, 1, 1)']
      ['out' 'cubic-bezier(0, 0, 0.2, 1)']
      ['in-out' 'cubic-bezier(0.4, 0, 0.2, 1)']
  ==
++  translate
  %-  ~(uni by spacing)
  %-  malt
  :~  ['1/2' '50%']
      ['1/3' '33.333333%']
      ['2/3' '66.666667%']
      ['1/4' '25%']
      ['2/4' '50%']
      ['3/4' '75%']
      ['full' '100%']
  ==
++  width
  %-  ~(uni by spacing)
  %-  malt
  :~  ['auto' 'auto']
      ['1/2' '50%']
      ['1/3' '33.333333%']
      ['2/3' '66.666667%']
      ['1/4' '25%']
      ['2/4' '50%']
      ['3/4' '75%']
      ['1/5' '20%']
      ['2/5' '40%']
      ['3/5' '60%']
      ['4/5' '80%']
      ['1/6' '16.666667%']
      ['2/6' '33.333333%']
      ['3/6' '50%']
      ['4/6' '66.666667%']
      ['5/6' '83.333333%']
      ['1/12' '8.333333%']
      ['2/12' '16.666667%']
      ['3/12' '25%']
      ['4/12' '33.333333%']
      ['5/12' '41.666667%']
      ['6/12' '50%']
      ['7/12' '58.333333%']
      ['8/12' '66.666667%']
      ['9/12' '75%']
      ['10/12' '83.333333%']
      ['11/12' '91.666667%']
      ['full' '100%']
      ['screen' '100vw']
      ['min' 'min-content']
      ['max' 'max-content']
      ['fit' 'fit-content']
  ==
++  will-change
  %-  malt
  :~  ['auto' 'auto']
      ['scroll' 'scroll-position']
      ['contents' 'contents']
      ['transform' 'transform']
  ==
++  z-index
  %-  malt
  :~  ['auto' 'auto']
      ['0' '0']
      ['10' '10']
      ['20' '20']
      ['30' '30']
      ['40' '40']
      ['50' '50']
  ==
--