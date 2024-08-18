
  do ->

    { camel-case } = dependency 'native.String'
    { Num } = dependency 'primitive.Type'

    large-type-piece-char = -> String.from-code-point 0x1ce00 + 26 + Num it

    char-names = <[ upper-left-arc upper-left-corner upper-terminal upper-left-crotch left-arm
      crossbar crossbar-with-lower-stem upper-half-vertex-of-m diagonal-lower-left short-upper-terminal
      upper-right-arc right-arm upper-right-crotch upper-right-corner stem-with-right-crossbar
      stem diagonal-upper-right-and-lower-right diagonal-upper-right diagonal-lower-right
      short-lower-terminal lower-left-and-upper-left-arc centre-of-k lower-half-vertex-of-m
      upper-half-vertex-of-w centre-of-x centre-of-y centre-of-z-with-crossbar raised-upper-left-arc
      stem-with-left-crossbar lower-right-and-upper-right-arc diagonal-upper-left-and-lower-left
      stem-with-left-joint stem-with-crossbar diagonal-upper-left lower-terminal lower-left-corner
      lower-left-arc lower-left-crotch crossbar-with-upper-stem vertex-of-v lower-half-vertex-of-w
      lower-right-arc lower-right-corner lower-right-arc-with-tail lower-right-crotch
      stem-45 stem-2345 stem-4 stem-34 stem-234 stem-1234 stem-3 stem-23 stem-2 stem-12
    ]>

    large-type-pieces-chars = { [ (camel-case name), (large-type-piece-char index) ] for name, index in char-names }

    {
      large-type-pieces-chars
    }