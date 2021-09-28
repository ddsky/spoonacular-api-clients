-module(spoonacular_inline_response_200_18_dishes).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_18_dishes/0]).

-type spoonacular_inline_response_200_18_dishes() ::
    #{ 'image' := binary(),
       'name' := binary()
     }.

encode(#{ 'image' := Image,
          'name' := Name
        }) ->
    #{ 'image' => Image,
       'name' => Name
     }.
