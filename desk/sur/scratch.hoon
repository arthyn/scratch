|%
+$  key  @t
+$  text  @t
+$  file
  $:  =text
  ==
+$  pile  (map key file)
+$  save  (pair key file)
+$  file-action  ?(%save %delete)
+$  action
  $%  [%file =key =text action=file-action]
  ==
+$  state-1
  $:  %1
      =pile
  ==
--