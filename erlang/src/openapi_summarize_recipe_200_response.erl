-module(openapi_summarize_recipe_200_response).

-export([encode/1]).

-export_type([openapi_summarize_recipe_200_response/0]).

-type openapi_summarize_recipe_200_response() ::
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
