/-  *scratch
/+  rudder, tonic, server, default-agent, verb, dbug
::
/~    pages
    (page:rudder pile action)
  /app/scratch
::
^-  agent:gall
=>
  |%
  ::
  +$  card  card:agent:gall
  --
::
~&  "running scratchh"
=/  verbose  &
=|  state-2
=*  state  -
=<
  %+  verb  &
  %-  agent:dbug
  %-  agent:tonic
  |_  =bowl:gall
  +*  this  .
      def   ~(. (default-agent this %.n) bowl)
      cor   ~(. +> [bowl ~])
  ::
  ++  on-init
    ^-  (quip card _this)
    :_  this
    [%pass /eyre/connect %arvo %e %connect [~ /[dap.bowl]] dap.bowl]~
  ::
  ++  on-save  !>(state)
  ::
  ++  on-load
    |=  =vase
    ^-  (quip card _this)
    =^  cards  state
      abet:(load:cor vase)
    [cards this]
  ::
  ++  on-poke
    |=  [=mark =vase]
    ^-  (quip card _this)
    =^  cards  state
      abet:(poke:cor mark vase)
    [cards this]
  ++  on-watch
    |=  =path
    ^-  (quip card _this)
    =^  cards  state
      abet:(watch:cor path)
    [cards this]
  ::
  ++  on-agent  on-agent:def
  ::
  ++  on-arvo
    |=  [=wire =sign-arvo]
    ^-  (quip card _this)
    ?+  sign-arvo  (on-arvo:def wire sign-arvo)
        [%eyre %bound *]
      ~?  !accepted.sign-arvo
        [dap.bowl 'eyre bind rejected!' binding.sign-arvo]
      [~ this]
    ==
  ::
  ++  on-leave  on-leave:def
  ++  on-peek   peek:cor
  ++  on-fail   on-fail:def
  --
|_  [=bowl:gall cards=(list card)]
++  abet  [(flop cards) state]
++  cor   .
++  emit  |=(=card cor(cards [card cards]))
++  give  |=(=gift:agent:gall (emit %give gift))
++  log
  |=  msg=(trap tape)
  ?.  verbose  same
  (slog leaf+"%{(trip dap.bowl)} {(msg)}" ~)
++  init
  ^+  cor
  cor
++  load
  |=  =vase
  |^
  =+  !<(old=versioned-state vase)
  =?  old  ?=(%1 -.old)  (state-1-to-2 old)
  ?>  ?=(%2 -.old)
  cor(state old)
  ++  state-1-to-2
    |=  old=state-1
    ^-  state-2
    :-  %2
    ^-  ^pile
    %-  ~(run by pile.old)
    |=  =file:v1:^old
    [text.file %plain]
  --
::
++  poke
  |=  [=mark =vase]
  ^+  cor
  ?+    mark  ~|(bad-poke/mark !!)
      %save
    %-  (log |.("save poke"))
    ?>  =(src our):bowl
    =+  !<(=save vase)
    %-  (log |.("saving {<save>}"))
    sc-abet:(sc-save:(sc-abed:sc-core p.save) q.save)
    ::
      %delete
    ?>  =(src our):bowl
    =+  !<(=key vase)
    sc-abet:sc-delete:(sc-abed:sc-core key)
    ::
    ::  %handle-http-request: incoming from eyre
    ::
      %handle-http-request
    =;  out=(quip card _pile)
      =.  pile  +.out
      cor(cards (welp (flop -.out) cards))
    %.  [bowl !<(order:rudder vase) pile]
    %:  (steer:rudder _pile action)
        pages
        (point /[dap.bowl] ~(key by pages))
        (fours:rudder pile)
      |=  act=action
      ^-  $@(brief:rudder [brief:rudder (list card) _pile])
      ~&  act
      =^  caz  pile
        ?-  action.act
            %save
          [[%saved cards] pile]:(poke %save !>([key.act [text view]:act]))
            %delete
          [[%deleted cards] pile]:(poke %delete !>(key.act))
        ==
      [-.caz +.caz pile]
    ==
  ==
::
++  point
  =,  rudder
  |=  [base=(lest @t) have=(set term)]
  ^-  route
  |=  trail
  ^-  (unit place)
  ?~  site=(decap:rudder base site)  ~
  =/  =(pole knot)  u.site
  ~&  "request at {<pole>} with base {<base>}"
  ?-  pole
    ~           `[%page & %index]
    [~ ~]       `[%away (snip ^site)]
    [%index ~]  `[%away (snip ^site)]
    [%view @ ~]   `[%page | %view]
    :: favicon
    [%icon ~]     `[%page | %icon]
  ::
      [part=@ ~]
    ?:  (~(has in have) part.pole)
      `[%page & part.pole]
    `[%page & %index]
  ::
    [@ ~ ~]         `[%away (snip ^site)]
    [%'~' rest=*]   `[%page | %serve]
    *               ~
  ==
::
++  watch
  |=  =(pole knot)
  ^+  cor
  ?+  pole  ~|(bad-watch/pole !!)
  ::
    [%http-response *]  cor
  ==
::
++  peek
  |=  =path
  ^-  (unit (unit cage))
  ?+  path  [~ ~]
  ::
      [%x %state ~]
    ``noun+!>(state)
  ==
::
++  sc-core
  |_  [=file =key gone=_|]
  ++  sc-core  .
  ++  sc-abet
    =.  pile
      ?:  gone  (~(del by pile) key)
    (~(put by pile) key file)
    cor
  ++  sc-abed
    |=  k=^key
    sc-core(key k, file (~(gut by pile) k *^file))
  ++  sc-save
    |=  f=^file
    =.  file  f
    sc-core
  ++  sc-delete
    =.  gone  &
    sc-core
  --
--