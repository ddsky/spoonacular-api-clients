-module(spoonacular_inline_response_200_48).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_48/0]).

-type spoonacular_inline_response_200_48() ::
    #{ 'category' := binary(),
       'probability' := integer()
     }.

encode(#{ 'category' := Category,
          'probability' := Probability
        }) ->
    #{ 'category' => Category,
       'probability' => Probability
     }.
