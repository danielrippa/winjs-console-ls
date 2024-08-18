
  do ->

    { new-instance } = dependency 'primitive.Instance'
    { Obj } = dependency 'primitive.Type'

    as-string = -> if it.to-string isnt void then it.to-string! else String it

    #

    write-glyph = (letter, font, screen-buffer) ->

      { cursor } = screen-buffer

      glyph = font[letter]

      if glyph isnt void

        rows = glyph.length
        columns = 0

        for line in glyph

          if line.length > columns
            columns = line.length

          for char in line
            screen-buffer.write char

          cursor => ..left line.length ; ..down!

        cursor => ..right columns ; ..up rows

      else

        screen-buffer.write ' '

    #

    new-font-writer = (font, screen-buffer) ->

      Obj font ; Obj screen-buffer

      new-instance do

        write: member: (string) !->

          for letter in string / ''
            # winjs.process.io.stdout letter
            write-glyph letter, font, screen-buffer

    {
      new-font-writer
    }