
  do ->

    { screen-buffer: sb } = dependency 'console.Library'
    { new-instance } = dependency 'primitive.Instance'
    { Num } = dependency 'primitive.Type'
    { new-screen-buffer-cursor } = dependency 'console.ScreenBufferCursor'
    { new-screen-buffer-color-palette } = dependency 'console.ScreenBufferColorPalette'
    { new-screen-buffer-text-attributes } = dependency 'console.ScreenBufferTextAttributes'

    as-string = (args) ->

      string = []

      for arg in args

        string.push if arg.to-string isnt void
          arg.to-string!
        else
          String arg

      string * ' '

    new-screen-buffer-writer = (handle) ->

      Num handle

      cursor = new-screen-buffer-cursor handle

      color-palette = new-screen-buffer-color-palette handle
      text-attributes = new-screen-buffer-text-attributes handle

      new-instance do

        handle: getter: -> handle

        palette: getter: -> color-palette

        text-attributes-value:
          getter: -> text-attributes.value
          setter: -> text-attributes.value = it

        ink: setter: -> text-attributes.ink = it
        paper: setter: -> text-attributes.paper = it
        border: setter: -> text-attribtues.border = it
        inverted: setter: -> text-attributes.inverted = it

        cursor: getter: -> cursor

        write: member: -> sb.write @handle, as-string arguments

    {
      new-screen-buffer-writer
    }