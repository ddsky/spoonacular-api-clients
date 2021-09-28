-module(spoonacular_inline_response_200_47).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_47/0]).

-type spoonacular_inline_response_200_47() ::
    #{ 'category' := binary(),
       'probability' := integer()
     }.

encode(#{ 'category' := Category,
          'probability' := Probability
        }) ->
    #{ 'category' => Category,
       'probability' => Probability
     }.
