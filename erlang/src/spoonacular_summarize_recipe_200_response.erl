-module(spoonacular_summarize_recipe_200_response).

-export([encode/1]).

-export_type([spoonacular_summarize_recipe_200_response/0]).

-type spoonacular_summarize_recipe_200_response() ::
    #{ 'id' := integer(),
       'summary' := binary(),
       'title' := binary()
     }.

encode(#{ 'id' := Id,
          'summary' := Summary,
          'title' := Title
        }) ->
    #{ 'id' => Id,
       'summary' => Summary,
       'title' => Title
     }.
