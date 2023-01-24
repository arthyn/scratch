/-  *scratch
/+  rudder, tonic, default-agent, verb, dbug
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
=|  state-1
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
++  init
  ^+  cor
  cor
++  load
  |=  =vase
  =/  old  !<(state-1 vase)
  =.  state  old
  cor
::
++  poke
  |=  [=mark =vase]
  ^+  cor
  ?>  =(src our):bowl
  ?+    mark  ~|(bad-poke/mark !!)
      %save
    =+  !<(=save vase)
    sc-abet:(sc-save:(sc-abed:sc-core p.save) q.save)  
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
        ~&  ~(key by pages)
        (point:rudder /[dap.bowl] & ~(key by pages))
        (fours:rudder pile)
      |=  act=action
      ^-  $@(brief:rudder [brief:rudder (list card) _pile])
      =^  caz  pile
        ~&  act
        [cards pile]:(poke %save !>([key.act [text.act]]))
      ['Processed succesfully.' caz pile]
    ==
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
  --
--