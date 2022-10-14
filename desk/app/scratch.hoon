/-  *scratch
/+  rudder, tonic, default-agent, verb, dbug
::
/~    pages
    (page:rudder example action)
  /app/scratch
::
^-  agent:gall
=>
  |%
  +$  state-1
    $:  %1
        =example
    ==
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
    ?>  =(src our):bowl
    ?+  mark  (on-poke:def mark vase)
      ::  %handle-http-request: incoming from eyre
      ::
        %handle-http-request
      =;  out=(quip card _example)
        [-.out this(example +.out)]
      %.  [bowl !<(order:rudder vase) example]
      %:  (steer:rudder _example action)
          pages
          ~&  ~(key by pages)
          (point:rudder /[dap.bowl] & ~(key by pages))
          (fours:rudder example)
        |=  act=action
        ^-  $@(brief:rudder [brief:rudder (list card) _example])
        ['Processed succesfully.' ~ example]
      ==
    ==

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
  ++  on-peek   on-peek:def
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
++  watch
  |=  =(pole knot)
  ^+  cor
  ?+  pole  ~|(bad-watch/pole !!)
  ::
    [%http-response *]  cor
  ==
--