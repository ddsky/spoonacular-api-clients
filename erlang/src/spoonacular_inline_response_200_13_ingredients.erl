-module(spoonacular_inline_response_200_13_ingredients).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_13_ingredients/0]).

-type spoonacular_inline_response_200_13_ingredients() ::
    #{ 'id' := integer(),
       'name' := binary(),
       'localizedName' := binary(),
       'image' := binary()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'localizedName' := LocalizedName,
          'image' := Image
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'localizedName' => LocalizedName,
       'image' => Image
     }.
