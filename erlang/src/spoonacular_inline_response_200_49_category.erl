-module(spoonacular_inline_response_200_49_category).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_49_category/0]).

-type spoonacular_inline_response_200_49_category() ::
    #{ 'name' := binary(),
       'probability' := integer()
     }.

encode(#{ 'name' := Name,
          'probability' := Probability
        }) ->
    #{ 'name' => Name,
       'probability' => Probability
     }.
