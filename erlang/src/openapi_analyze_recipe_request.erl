-module(openapi_analyze_recipe_request).

-export([encode/1]).

-export_type([openapi_analyze_recipe_request/0]).

-type openapi_analyze_recipe_request() ::
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
