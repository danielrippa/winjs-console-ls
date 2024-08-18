
  do ->

    { screen-buffer: sb } = dependency 'console.Library'
    { new-instance } = dependency 'primitive.Instance'
    { MaybeNum } = dependency 'primitive.Type'
    { new-screen-buffer-writer } = dependency 'console.ScreenBufferWriter'
    { new-screen-buffer-control-settings } = dependency 'console.ScreenBufferControlSettings'
    { get-screen-buffer-state, set-screen-buffer-state } = dependency 'console.ScreenBufferState'

    new-screen-buffer = (handle) ->

      MaybeNum handle ; if handle is void => handle = sb.get-stdout-handle!

      writer = new-screen-buffer-writer handle
      control-settings = new-screen-buffer-control-settings handle

      new-instance do

        handle: getter: -> handle

        cursor: getter: -> writer.cursor

        control-settings: getter: -> control-settings

        text-attributes-value:
          getter: -> writer.text-attributes-value
          setter: -> writer.text-attributes-value = it

        ink: setter: -> writer.ink = it
        paper: setter: -> writer.paper = it
        border: setter: -> writer.border = it
        inverted: setter: -> writer.inverted = it

        write: member: -> writer.write ...

        state:
          getter: -> get-screen-buffer-state @
          setter: -> set-screen-buffer-satte @, it

    console = new-screen-buffer!

    {
      new-screen-buffer,
      console
    }