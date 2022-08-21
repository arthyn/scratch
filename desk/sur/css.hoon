|%
+$  name      @t
+$  prop      @t
+$  value     @t
+$  params    @t
+$  selector  @t
+$  type   ?(%root %rule %decl %at-rule) 
+$  decl
  $:  =prop
      =value
      important=?
  ==
+$  at-rule
  $:  nodes=(list node)
      =name
      =params
      parent=node
+$  rule
  $:  nodes=(list node)
      =selector
      selectors=(list selector)
      parent=node
      =type
  ==
+$  root
  $:  nodes=(list node)
      parent=node
      =type
  ==
+$  node
  $%  [%root p=root]
      [%rule p=rule]
      [%decl p=decl]
      [%at-rule p=at-rule]
  ==
--