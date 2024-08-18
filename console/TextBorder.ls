
  do ->

    { Obj } = dependency 'primitive.Obj'

    border = new-text-border = (text-border = {}) ->

      { top = off, left = off, bottom = off, right = off } = text-border

      { top, left, bottom, right }

    text-borders =

      top:  border top: on
      sides:  border left: on, right: on
      underlined:  border bottom: on

      nw:  border top: on, left: on
      ne:  border top: on, right: on
      se:  border bottom: on, right: on
      sw:  border bottom: on, left: on

      all:  border top: on, left: on, bottom: on, right: on

    text-border-names = [ (key) for key of text-borders ]

    TextBorder = (value) -> Obj <[ top:Bool left:Bool bottom:Bool right:Bool ]>

    {
      new-text-border,
      text-borders, text-border-names,
      TextBorder
    }