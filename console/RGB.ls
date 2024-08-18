
  do ->

    { Obj } = dependency 'primitive.Obj'

    RGB = (value) -> Obj <[ Num:r Num:g Num:b ]> value

    {
      RGB
    }