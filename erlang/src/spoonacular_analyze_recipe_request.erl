-module(spoonacular_analyze_recipe_request).

-export([encode/1]).

-export_type([spoonacular_analyze_recipe_request/0]).

-type spoonacular_analyze_recipe_request() ::
    #{ 'language' => binary(),
       'includeNutrition' => boolean(),
       'includeTaste' => boolean()
     }.

encode(#{ 'language' := Language,
          'includeNutrition' := IncludeNutrition,
          'includeTaste' := IncludeTaste
        }) ->
    #{ 'language' => Language,
       'includeNutrition' => IncludeNutrition,
       'includeTaste' => IncludeTaste
     }.
