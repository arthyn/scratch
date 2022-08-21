/-  css
|%
+$  class
  $:  root=@t
      variants=(list @t)
      opacity=(unit @t)
  ==
+$  variation
  $:  name=@t
      props=(list @t)
  ==
+$  utility-plugin
  $:  key=@t
      variations=(list variation)
  ==
+$  utility
  $:  root=@t
      declarations=(list decl.css)
  ==
--