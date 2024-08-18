
  do ->

    { screen-buffer: sb } = dependency 'console.Library'
    { new-instance } = dependency 'primitive.Instance'
    { Num } = dependency 'primitive.Type'
    { new-text-attributes } = dependency 'console.TextAttributes'

    set-attributes = (handle, attributes) ->

      text-attributes = new-text-attributes sb.get-text-attributes-value handle

      text-attributes.apply-attributes attributes

      sb.set-text-attributes-value handle, (Num text-attributes.value)

    new-screen-buffer-text-attributes = (handle) ->

      Num handle

      new-instance do

        handle: getter: -> handle

        value:
          getter: -> sb.get-text-attributes-value @handle
          setter: -> sb.set-text-attributes-value @handle, Num it

        ink: setter: -> set-attributes @handle, ink: it
        paper: setter: -> set-attributes @handle, paper: it
        border: setter: -> set-attributes @handle, border: it
        inverted: setter: -> set-attributes @handle, inverted: it

        apply-attributes: member: -> set-attributes @handle, it

    {
      new-screen-buffer-text-attributes
    }

