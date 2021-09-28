-module(spoonacular_inline_response_200_18_ingredients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_18_ingredients/0]).

-type spoonacular_inline_response_200_18_ingredients() ::
    #{ 'image' := binary(),
       'include' := boolean(),
       'name' := binary()
     }.

encode(#{ 'image' := Image,
          'include' := Include,
          'name' := Name
        }) ->
    #{ 'image' => Image,
       'include' => Include,
       'name' => Name
     }.
