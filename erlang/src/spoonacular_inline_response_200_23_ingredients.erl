-module(spoonacular_inline_response_200_23_ingredients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_23_ingredients/0]).

-type spoonacular_inline_response_200_23_ingredients() ::
    #{ 'id' := integer(),
       'original' := binary(),
       'glycemicIndex' := integer(),
       'glycemicLoad' := integer()
     }.

encode(#{ 'id' := Id,
          'original' := Original,
          'glycemicIndex' := GlycemicIndex,
          'glycemicLoad' := GlycemicLoad
        }) ->
    #{ 'id' => Id,
       'original' => Original,
       'glycemicIndex' => GlycemicIndex,
       'glycemicLoad' => GlycemicLoad
     }.
