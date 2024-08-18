
  do ->

    { new-instance } = dependency 'primitive.Instance'
    { Num, Bool, Obj } = dependency 'primitive.Type'
    { screen-buffer: sb } = dependency 'console.Library'

    new-screen-buffer-control-settings = (handle) ->

      Num handle

      new-instance do

        virtual-terminal-processing:
          getter: -> sb.is-virtual-terminal-processing-enabled @handle
          setter: -> Bool it ; sb.set-terminal-processing-state @handle, it

        new-line-auto-return:
          getter: -> sb.is-new-line-auto-return-enabled @handle
          setter: -> Bool it ; sb.set-new-line-auto-return-state @handle, it

        processed-output:
          getter: -> sb.is-processed-output-enabled @handle
          setter: -> Bool it ; sb.set-processed-output-state @handle, it

        wrap-at-eol:
          getter: -> sb.is-wrap-at-eol-enabled @handle
          setter: -> Bool it ; sb.set-wrap-at-eol-enabled @handle, it

        extended-attributes:
          getter: -> sb.are-extended-attributes-enabled @handle
          setter: -> Bool it ; sb.set-extended-attributes-state @handle, it

    {
      new-screen-buffer-control-settings
    }