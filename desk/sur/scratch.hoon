|%
+$  key  @t
+$  text  @t
+$  view  ?(%plain %md %html)
+$  file
  $:  =text
      =view
  ==
+$  pile  (map key file)
+$  save  (pair key file)
+$  file-action  ?(%save %delete)
+$  action
  $%  [%file =key =text =view action=file-action]
  ==
+$  state-2
  $:  %2
      =pile
  ==
+$  state-1
  $:  %1
      =pile:v1:old
  ==
+$  versioned-state  $%(state-1 state-2)
++  old
  |%
  ++  v1
    |%
    +$  pile  (map key file)
    +$  file
      $:  =text
      ==
    --
  --
--