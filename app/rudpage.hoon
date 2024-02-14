/+  default-agent, debug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0  val=@ud]
+$  card  card:agent:gall
--
%-  agent:debug
=|  state-0
=*  state -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(.  (default-agent  this  %.n) bowl)

++  on-init
  ^-  (quip card _this)
  :_  this
  :~
    [%pass /eyre/connect %arvo %e %connect [~ /[dap.bowl]] dap.bowl]
  ==

++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  old-state=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)
  ?-  -.old
    %0  `this(state old)
    ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
      ?>  =(%handle-http-request mark)
 =;  out=(quip card _state)
    [-.out this(state +.out)]
      %.   
        :+  bowl
        !<(order:rudder vase)
      state
  %:  (steer:rudder _state action)
    pages
    %:  point:rudder
      /rudpage
      &
      ~(key by pages)
    ==
    (fours:rudder enemies)
    |=  act=action
    ^-  $@  brief:rudder
        [brief:rudder (list card:agent:gall) _state]
    ?-  act
      %add  this(state +(state))
      %sub  this(state (dec state))
    ==
  ==
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?+    path  (on-watch:def path) 
      [%http-response *]
    `this
  ==
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  `this

++  on-leave  on-leave:def
++  on-peek  on-peek:def
++  on-agent  on-agent:def
++  on-fail  on-fail:def