
  do ->

    { screen-buffer: sb } = dependency 'console.Library'
    { new-instance } = dependency 'primitive.Instance'
    { Num, Obj, Bool } = dependency 'primitive.Type'
    { TextColor } = dependency 'console.TextColor'
    { TextBorder } = dependency 'console.TextBorder'

    set-bit = (value, bit, enabled) -> k = 1 .<<. bit ; if enabled then value .|. k else value .&. ~k

    #

    apply-rgbi = (value, rgbi, offset = 0) ->

      { red, green, blue, intensity } = rgbi

      set-attribute-bit = (bit, enabled) -> value := set-bit value, bit, enabled

      if blue  isnt void => set-attribute-bit 0 + offset, blue
      if green isnt void => set-attribute-bit 1 + offset, green
      if red   isnt void => set-attribute-bit 2 + offset, red

      if intensity isnt void => set-attribute-bit 3 + offset, intensity

      value

    #

    apply-tlbr = (value, tlbr) ->

      set-attribute-bit = (bit, enabled) -> value := set-bit value, bit, enabled

      { top, left, bottom, right } = tlbr

      if top    isnt void => set-attribute-bit 10, top
      if left   isnt void => set-attribute-bit 11, left
      if right  isnt void => set-attribute-bit 12, right
      if bottom isnt void => set-attribute-bit 15, bottom

      value

    #

    apply-inverse = (value, inverse) ->

      set-attribute-bit = (bit, enabled) -> value := set-bit value, bit, enabled

      set-attribute-bit 14, inverse

      value

    #

    new-text-attributes = (value) ->

      Num value

      new-instance do

        handle: getter: -> handle

        value: getter: -> value

        ink: setter: -> value := apply-rgbi value, (TextColor it)
        paper: setter: -> value := apply-rgbi value, (TextColor it), 4
        border: setter: -> value := apply-tlbr value, (TextBorder it)
        inverted: setter: -> value := apply-inverted value, (Bool it)

        apply-attributes: member: (attributes) ->

          { ink, paper, border, inverted } = attributes

          if ink isnt void => @ink = ink
          if paper isnt void => @paper = paper
          if border isnt void => @border = border
          if inverted isnt void => @inverted = inverted

    {
      new-text-attributes
    }