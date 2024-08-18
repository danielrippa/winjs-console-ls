
  do ->

    { type-error } = dependency 'primitive.Type'
    { Obj } = dependency 'primitive.Obj'

    rgbi = new-text-color = (text-color = {}) ->

      { red = off, green = off, blue = off, intensity = off } = text-color

      { red, green, blue, intensity }

    text-colors =

      black: rgbi!
      red: rgbi red: on
      green: rgbi green: on
      navy: rgbi blue: on

      celestial: rgbi green: on, blue: on
      curry: rgbi red: on, green: on
      purple: rgbi red: on, blue: on
      gray: rgbi red: on, green: on, blue: on

      silver: rgbi intensity: on
      vermillion: rgbi red: on, intensity: on
      emerald: rgbi green: on, intensity: on
      blue: rgbi blue: on , intensity: on
      turquoise: rgbi green: on, blue: on, intensity: on
      yellow: rgbi red: on, green: on, intensity: on
      fuchsia: rgbi red: on, blue: on, intensity: on
      white: rgbi red: on, green: on, blue: on, intensity: on

    text-color-names = [ (key) for key of text-colors ]

    TextColor = (value) -> Obj <[ Bool:red Bool:green Bool:blue Bool:intensity ]> value

    {
      text-colors, text-color-names, TextColor,
      new-text-color
    }