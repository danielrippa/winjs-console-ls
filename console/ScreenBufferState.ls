
  do ->

    get-screen-buffer-state = (screen-buffer) ->

      { text-attributes-value, control-settings } = screen-buffer
      # { virtual-terminal-processing, new-line-auto-return, processed-output, wrap-at-eol, extended-attributes } = control-settings

      winjs.process.io.stdout "attrs: text-attributes-value"

      {
        text-attributes-value # ,
        # virtual-terminal-processing, new-line-auto-return, processed-output, wrap-at-eol, extended-attributes
      }

    set-screen-buffer-state = (screen-buffer, state) !->

      {
        text-attributes-value,
        virtual-terminal-processing, new-line-auto-return, processed-output, wrap-at-eol, extended-attributes
      } = state

      screen-buffer

        ..text-attributes-value = text-attributes-value

        # ..control-settings <<< { virtual-terminal-processing, new-line-auto-return, processed-output, wrap-at-eol, extended-attributes }

    {
      get-screen-buffer-state,
      set-screen-buffer-state
    }