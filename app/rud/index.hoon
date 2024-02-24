/-  sur=rudpage
/+  rudder, server
!:
^-  (page:rudder rudpage:sur action:sur)
|_  [=bowl:gall =order:rudder =rudpage:sur]
++  build
  |=  $:  args=(list [k=@t v=@t])
          msg=(unit [gud=? txt=@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"my enemies"
        ;style:"form \{ display: inline-block; }"
        ;meta(charset "utf-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
      ==
      ;body
        ;+  ?~  msg  :/""
            ?:  gud.u.msg
              ;div#status.green:"{(trip txt.u.msg)}"
            ;div#status.red:"{(trip txt.u.msg)}"
        ;form(method "post")
          ;input(type "submit", name "add", value "add");
          ;input(type "submit", name "sub", value "sub");
        ==
      ==
    ==
  --
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action:sur)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?:  (~(has by args) 'add')
    [%add]
  ?:  (~(has by args) 'sub')
    [%sub]
  ~
::
++  final
  |=  [success=? =brief:rudder]
  ^-  reply:rudder
  ?.  success  (build ~ `[| `@t`brief])
  [%next 'rudpage' brief]
--
