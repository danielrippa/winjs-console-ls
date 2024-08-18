
  do ->

    { large-type-pieces-chars } = dependency 'console.LargeTypePieces'

    {
      upper-left-arc, crossbar, upper-right-arc, stem,
      stem-with-right-crossbar, stem-with-left-crossbar,
      upper-left-corner, lower-right-and-upper-right-arc,
      lower-left-corner, lower-right-arc, lower-terminal,
      right-arm, lower-left-arc, upper-right-corner,
      crossbar-with-lower-stem, crossbar-with-upper-stem,
      upper-terminal, centre-of-k, diagonal-upper-left-and-lower-left,
      upper-left-crotch, upper-right-crotch, upper-half-vertex-of-m,
      diagonal-upper-right, stem-with-left-joint, lower-half-vertex-of-m,
      diagonal-lower-left, lower-right-arc-with-tail, left-arm,
      vertex-of-v, diagonal-upper-left, upper-half-vertex-of-w,
      lower-left-crotch, lower-half-vertex-of-w, lower-right-crotch,
      centre-of-x, diagonal-upper-right-and-lower-right,
      diagonal-upper-left-and-lower-left, centre-of-y,
      centre-of-z-with-crossbar, diagonal-lower-right, lower-right-corner,
      stem23, stem-with-crossbar, raised-upper-left-arc,
      lower-left-and-upper-left-arc, stem34, short-upper-terminal,
      stem4, stem3, stem45, diagonal-lower-right, stem12,
      stem-with-crossbar, stem2345
    } = large-type-pieces-chars

    A =

      * [ upper-left-arc, crossbar, upper-right-arc ]
        [ stem-with-right-crossbar, crossbar, stem-with-left-crossbar ]
        [ lower-terminal, ' ', lower-terminal ]

    B =

      * [ upper-left-corner, crossbar, upper-right-arc ]
        [ stem-with-right-crossbar, crossbar, lower-right-and-upper-right-arc ]
        [ lower-left-corner, crossbar, lower-right-arc ]

    C =

      * [ upper-left-arc, crossbar, right-arm ]
        [ stem ]
        [ lower-left-arc, crossbar, right-arm ]

    D =

      * [ upper-left-corner, crossbar, upper-right-arc ]
        [ stem, ' ', stem ]
        [ lower-left-corner, crossbar, lower-right-arc ]

    E =

      * [ upper-left-corner, crossbar, right-arm ]
        [ stem-with-right-crossbar, crossbar ]
        [ lower-left-corner, crossbar, right-arm ]

    F =

      * [ upper-left-corner, crossbar, right-arm ]
        [ stem-with-right-crossbar, crossbar ]
        [ lower-terminal ]

    G =

      * [ upper-left-arc, crossbar, right-arm ]
        [ stem, ' ', upper-right-corner ]
        [ lower-left-arc, crossbar, lower-right-arc ]

    H =

      * [ upper-terminal, ' ', upper-terminal ]
        [ stem-with-right-crossbar, crossbar, stem-with-left-crossbar ]
        [ lower-terminal, ' ', lower-terminal ]

    I =

      * [ crossbar-with-lower-stem ]
        [ stem ]
        [ crossbar-with-upper-stem ]

    J =

      * [ ' ', ' ', upper-terminal ]
        [ ' ', ' ', stem ]
        [ lower-left-arc, crossbar, lower-right-arc ]

    K =

      * [ upper-terminal, ' ', upper-terminal ]
        [ stem-with-right-crossbar, centre-of-k, diagonal-upper-left-and-lower-left ]
        [ lower-terminal, ' ', lower-terminal ]

    L =

      * [ upper-terminal ]
        [ stem ]
        [ lower-left-corner, crossbar, right-arm ]

    M =

      * [ upper-left-crotch, upper-half-vertex-of-m, upper-right-crotch ]
        [ stem, lower-half-vertex-of-m, stem ]
        [ lower-terminal, ' ', lower-terminal ]

    N =

      * [ upper-left-crotch, diagonal-lower-left, upper-terminal ]
        [ stem, diagonal-upper-right, stem-with-left-joint ]
        [ lower-terminal, ' ', lower-terminal ]

    O =

      * [ upper-left-arc, crossbar, upper-right-arc ]
        [ stem, ' ', stem ]
        [ lower-left-arc, crossbar, lower-right-arc ]


    P =

      * [ upper-left-corner, crossbar, upper-right-arc ]
        [ stem-with-right-crossbar, crossbar, lower-right-arc ]
        [ lower-terminal ]

    Q  =

      * [ upper-left-arc, crossbar, upper-right-arc ]
        [ stem, ' ', stem ]
        [ lower-left-arc, crossbar, lower-right-arc-with-tail ]

    R =

      * [ upper-left-corner, crossbar, upper-right-arc   ]
        [ stem-with-right-crossbar, crossbar, lower-right-and-upper-right-arc ]
        [ lower-terminal, ' ', lower-terminal ]

    S  =

      * [ upper-left-arc, crossbar, right-arm ]
        [ lower-left-arc, crossbar, upper-right-arc ]
        [ left-arm, crossbar, lower-right-arc ]

    T =

      * [ left-arm, crossbar-with-lower-stem, right-arm ]
        [ ' ', stem ]
        [ ' ', lower-terminal ]

    U =

      * [ upper-terminal, ' ', upper-terminal ]
        [ stem, ' ', stem ]
        [ lower-left-arc, crossbar, lower-right-arc ]

    V =

      * [ upper-terminal, ' ', upper-terminal ]
        [ stem, ' ', stem ]
        [ diagonal-upper-right, vertex-of-v, diagonal-upper-left ]

    W =

      * [ upper-terminal, ' ', upper-terminal ]
        [ stem, upper-half-vertex-of-w, stem ]
        [ lower-left-crotch, lower-half-vertex-of-w, lower-right-crotch ]

    X =

      * [ upper-terminal, ' ', upper-terminal ]
        [ diagonal-upper-right-and-lower-right, centre-of-x, diagonal-upper-left-and-lower-left ]
        [ lower-terminal, ' ', lower-terminal ]

    Y =

      * [ upper-terminal, ' ', upper-terminal ]
        [ diagonal-upper-right, centre-of-y, diagonal-upper-left ]
        [ ' ', lower-terminal, ' ' ]

    Z =

      * [ upper-left-corner, crossbar, upper-right-corner ]
        [ diagonal-lower-right, centre-of-z-with-crossbar, diagonal-upper-left ]
        [ lower-left-corner, crossbar, lower-right-corner ]

    a =

      * [ ' ', ' ' ]
        [ upper-left-arc, upper-right-corner ]
        [ lower-left-arc, lower-right-corner ]

    b =

      * [ upper-terminal ]
        [ stem-with-right-crossbar, upper-right-arc ]
        [ lower-left-arc, lower-right-arc ]

    c =

      * []
        [ upper-left-arc, right-arm ]
        [ lower-left-arc, right-arm ]

    d =

      * [ ' ', upper-terminal ]
        [ upper-left-arc, stem-with-left-crossbar ]
        [ lower-left-arc, lower-right-corner ]

    e =

      * [ ]
        [ upper-left-arc, upper-right-arc ]
        [ lower-left-arc, right-arm ]

    f =

      * [ upper-left-arc ]
        [ stem-with-crossbar ]
        [ lower-terminal ]

    g =

      * []
        [ upper-left-arc, upper-right-corner ]
        [ lower-left-arc, stem-with-left-crossbar ]

    h =

      * [ upper-terminal ]
        [ stem-with-right-crossbar, upper-right-arc ]
        [ lower-terminal, lower-terminal ]

    i =

      * [ stem4 ]
        [ upper-terminal ]
        [ lower-terminal ]

    j  =

      * [ ' ', stem4 ]
        [ ' ', upper-terminal ]
        [ lower-left-arc, lower-right-arc ]

    k =

      * [ upper-terminal ]
        [ stem-with-right-crossbar, lower-right-and-upper-right-arc ]
        [ lower-terminal, lower-terminal ]

    l =

      * [ upper-terminal ]
        [ stem ]
        [ lower-left-arc ]

    m =

      * []
        [ upper-left-crotch, upper-right-crotch ]
        [ lower-terminal, lower-terminal ]

    n =

      * []
        [ upper-left-corner, upper-right-arc ]
        [ lower-terminal, lower-terminal ]

    o =

      * [ ]
        [ upper-left-arc, upper-right-arc ]
        [ lower-left-arc, lower-right-arc ]

    p =

      * []
        [ upper-left-corner, upper-right-arc ]
        [ stem-with-right-crossbar, lower-right-arc ]

    q =

      * []
        [ upper-left-arc, upper-right-corner ]
        [ lower-left-arc, stem-with-left-crossbar ]

    r =

      * []
        [ upper-left-arc, right-arm ]
        [ lower-terminal ]

    s =

      * [ ]
        [ upper-left-arc, crossbar ]
        [ crossbar, lower-right-arc ]

    t =

      * [ upper-terminal ]
        [ stem-with-crossbar ]
        [ lower-left-arc, lower-right-arc ]

    u =

      * [ ]
        [ upper-terminal, upper-terminal ]
        [ lower-left-corner, lower-right-corner ]

    v =

      * []
        [ upper-terminal, upper-terminal ]
        [ lower-left-arc, lower-right-arc ]

    w =

      * []
        [ upper-terminal, upper-terminal ]
        [ lower-left-crotch, lower-right-crotch ]

    x =

      * []
        [ lower-left-and-upper-left-arc, lower-right-and-upper-right-arc ]
        [ lower-terminal, lower-terminal ]

    y =

      * []
        [ upper-terminal, upper-terminal ]
        [ lower-left-arc, stem-with-left-crossbar ]

    z =

      * []
        [ left-arm, upper-right-corner ]
        [ lower-left-corner, right-arm ]

    upper-case-letters = { A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z }
    lower-case-letters = { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z }

    digits =

      '0':

        * [ upper-left-arc, crossbar, upper-right-arc ]
          [ stem, stem23, stem ]
          [ lower-left-arc, crossbar, lower-right-arc ]

      '1':

        * [ upper-right-crotch ]
          [ stem ]
          [ lower-terminal ]

      '2':

        * [ upper-left-arc, crossbar, upper-right-arc ]
          [ upper-left-arc, crossbar, lower-right-arc ]
          [ lower-left-corner, crossbar, right-arm ]

      '3':

        * [ upper-left-arc, crossbar, upper-right-arc ]
          [ ' ', crossbar, lower-right-and-upper-right-arc ]
          [ lower-left-arc, crossbar, lower-right-arc ]

      '4':

        * [ upper-terminal, ' ', upper-terminal ]
          [ lower-left-corner, crossbar, stem-with-crossbar ]
          [ ' ', ' ', lower-terminal ]

      '5':

        * [ upper-left-corner, crossbar, right-arm ]
          [ lower-left-corner, crossbar, upper-right-arc ]
          [ lower-left-arc, crossbar, lower-right-arc ]

      '6':

        * [ upper-left-arc, crossbar, upper-right-arc ]
          [ stem-with-right-crossbar, crossbar, upper-right-arc ]
          [ lower-left-arc, crossbar, lower-right-arc ]

      '7':

        * [ left-arm, crossbar, upper-right-corner ]
          [ ' ', raised-upper-left-arc, diagonal-upper-left ]
          [ ' ', lower-terminal, ' ' ]

      '8':

        * [ upper-left-arc, crossbar, upper-right-arc ]
          [ lower-left-and-upper-left-arc, crossbar, lower-right-and-upper-right-arc ]
          [ lower-left-arc, crossbar, lower-right-arc ]

      '9':

        * [ upper-left-arc, crossbar, upper-right-arc ]
          [ lower-left-arc, crossbar, stem-with-left-crossbar ]
          [ lower-left-arc, crossbar, lower-right-arc ]

    symbols =

      '.':

        * [ ]
          [ ]
          [ stem3 ]

      ',':

        * [ ]
          [ ]
          [ diagonal-lower-right ]

      '?':

        * [ upper-left-arc, crossbar, upper-right-arc ]
          [ ' ', raised-upper-left-arc, diagonal-upper-left ]
          [ ' ', stem45 ]

      ':':

        * [ ]
          [ stem12 ]
          [ stem12 ]

      ';':

        * [ ]
          [ stem12 ]
          [ lower-right-arc ]

      '=':

        * [ ]
          [ left-arm, crossbar, right-arm ]
          [ left-arm, crossbar, right-arm ]

      "'":

        * [ upper-terminal ]
          [ ]
          [ ]

      '"':

        * [ upper-terminal, upper-terminal ]
          [ ]
          [ ]

      '#':

        * [ ]
          [ stem-with-crossbar, stem-with-crossbar ]
          [ stem-with-crossbar, stem-with-crossbar ]

      '!':

        * [ upper-terminal ]
          [ stem ]
          [ stem45 ]

      '(':

        * [ upper-left-arc ]
          [ stem ]
          [ lower-left-arc ]

      ')':

        * [ upper-right-arc ]
          [ stem ]
          [ lower-right-arc ]

      '[':

        * [ upper-left-corner ]
          [ stem ]
          [ lower-left-corner ]

      ']':

        * [ upper-right-corner ]
          [ stem ]
          [ lower-right-corner ]

      '{':

        * [ upper-left-arc, right-arm ]
          [ lower-right-and-upper-right-arc ]
          [ lower-left-arc, right-arm ]

      '}':

        * [ left-arm, upper-right-arc ]
          [ ' ', lower-left-and-upper-left-arc ]
          [ left-arm, lower-right-arc ]

      '|':

        * [ stem2345 ]
          [  ]
          [ stem2345 ]

      '-':

        * [ ]
          [ crossbar ]
          [ ' ' ]

      '+':

        * [ ]
          [ left-arm, stem-with-crossbar, right-arm ]
          [ ' ' ]

      '/':

        * [ ' ', ' ', diagonal-upper-left ]
          []
          []

    font = {}

    font <<< upper-case-letters <<< lower-case-letters <<< digits <<< symbols

    {
      upper-case-letters, lower-case-letters,
      digits,
      font
    }