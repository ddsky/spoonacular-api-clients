-module(spoonacular_inline_response_200_49).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_49/0]).

-type spoonacular_inline_response_200_49() ::
    #{ 'answer' := binary(),
       'image' := binary()
     }.

encode(#{ 'answer' := Answer,
          'image' := Image
        }) ->
    #{ 'answer' => Answer,
       'image' => Image
     }.
