
  do ->

    { library } = dependency 'prelude.External'

    { screen-buffer, window, input, get-font-faces } = library 'WinJsConsole.dll'

    {
      screen-buffer, window,
      input,
      get-font-faces
    }