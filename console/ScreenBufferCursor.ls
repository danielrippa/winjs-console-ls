
  do ->

    { Num, MaybeNum, Bool } = dependency 'primitive.Type'
    { new-instance } = dependency 'primitive.Instance'
    { screen-buffer: sb } = dependency 'console.Library'

    new-screen-buffer-cursor = (handle) ->

      Num handle

      new-instance do

        handle: getter: -> handle

        goto: member: (row, column) ->

          MaybeNum row ; MaybeNum column

          if row is void => row = @row
          if column is void => column = @column

          sb.set-cursor-location @handle, row, column

        row:
          getter: -> sb.get-cursor-location @handle .row
          setter: -> Num it ; @goto it

        column:
          getter: -> sb.get-cursor-location @handle .column
          setter: -> Num it ; @goto void, it

        size:
          getter: -> sb.get-cursor-size @handle
          setter: -> Num it ; sb.set-cursor-size @handle, it

        visible:
          getter: -> sb.get-cursor-visibility @handle
          setter: -> Bool it ; sb.set-cursor-visibility @handle, it

        show: member: !-> @visible = yes
        hide: member: !-> @visible = no

        up: member: (n = 1) -> Num n ; @row = @row - n
        down: member: (n = 1) -> Num n ; @row = @row + n

        left: member: (n = 1) -> Num n ; @column = @column - n
        right: member: (n = 1) -> Num n ; @column = @column + n

        n: member: -> @up it
        s: member: -> @down it
        e: member: -> @right it
        w: member: -> @left it

        nw: member: -> @n it ; @w it
        ne: member: -> @n it ; @e it
        sw: member: -> @s it ; @w it
        se: member: -> @s it ; @e it

        nl: member: -> @down! ; @column = 0

    {
      new-screen-buffer-cursor
    }
