
  do ->

    { screen-buffer: sb } = dependency 'console.Library'
    { new-instance } = dependency 'primitive.Instance'
    { Num, Obj } = dependency 'primitive.Type'
    { RGB } = dependency 'console.RGB'
    { NumRange } = dependency 'primitive.NumRange'
    { Byte } = dependency 'primitive.Byte'

    PaletteColor = (value) -> RGB value ; { r, g, b } = value ; Byte r ; Byte g ; Byte b ; value

    PaletteColorIndex = (value) -> NumRange 0, 15, value

    new-screen-buffer-color-palette = (handle) ->

      Num handle

      new-instance do

        handle: getter: -> handle

        get-color: member: (color-index) -> sb.get-palette-color @handle, PaletteColorIndex color-index
        set-color: member: (color-index, rgb) -> { r, g, b } = PaletteColor rgb ; sb.set-palette-color @handle, (PaletteColorIndex color-index), r, g, b

    {
      PaletteColor, PaletteColorIndex,
      new-screen-buffer-color-palette
    }

